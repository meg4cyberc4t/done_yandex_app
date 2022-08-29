import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:done_yandex_app/src/data/models/app_requests.dart';
import 'package:done_yandex_app/src/data/models/app_responses.dart';
import 'package:done_yandex_app/src/data/models/dto/create_task_dto.dart';
import 'package:done_yandex_app/src/data/models/dto/edit_task_dto.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/data/sources/tasks_local_ds.dart';
import 'package:done_yandex_app/src/data/sources/tasks_remote_ds.dart';
import 'package:done_yandex_app/src/domain/tasks_repository_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: TasksRepositoryInterface)
class TasksRepository extends TasksRepositoryInterface {
  @factoryMethod
  TasksRepository({
    required this.localDs,
    required this.remoteDs,
  });
  final TasksLocalDataSource localDs;
  final TasksRemoteDataSource remoteDs;

  Future<String> get phoneTitle {
    if (kIsWeb) return Future.value('Web');
    const String unrecognizedModel = "Unrecognized model";
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      return deviceInfo.androidInfo
          .then((value) => value.model ?? unrecognizedModel);
    }
    if (Platform.isIOS) {
      return deviceInfo.iosInfo
          .then((value) => value.name ?? unrecognizedModel);
    }
    return Future.value(unrecognizedModel);
  }

  @override
  Future<void> createTask(CreateTaskDTO dto) async {
    final TaskModel newTask = TaskModel(
      id: const Uuid().v4().toString(),
      text: dto.text,
      importance: dto.importance,
      deadline: dto.deadline,
      done: dto.done,
      createdAt: DateTime.now(),
      changedAt: DateTime.now(),
      lastUpdatedBy: await phoneTitle,
    );
    await localDs.saveTask(newTask);
    final oldList = await getTasks();
    oldList.add(newTask);
    await localDs.saveList(oldList);
    Logger.root.info('Task ${newTask.id} save locally');
    createTaskRemotely(newTask);
  }

  Future<void> createTaskRemotely(TaskModel task) async {
    final res = await remoteDs.createTask(
      lastRevision: localDs.getRevision(),
      element: TaskAppRequest(element: task),
    );
    localDs.saveRevision(res.revision);
    Logger.root.info('Task ${task.id} save remotely');
  }

  @override
  Future<void> deleteTask(String id) async {
    await localDs.deleteTask(id);
    Logger.root.info('Task $id delete locally');
    deleteTaskRemotely(id);
  }

  Future<void> deleteTaskRemotely(String id) async {
    final res = await remoteDs.deleteTask(
      lastRevision: localDs.getRevision(),
      id: id,
    );
    localDs.saveRevision(res.revision);
    Logger.root.info('Task $id delete remotely');
  }

  @override
  Future<void> editTask(EditTaskDTO dto) async {
    final TaskModel? oldTask = await localDs.getTask(dto.id);
    if (oldTask == null) return;
    final TaskModel newTask = oldTask.copyWith(
      done: dto.done ?? oldTask.done,
      deadline: dto.deadline ?? oldTask.deadline,
      importance: dto.importance ?? oldTask.importance,
      lastUpdatedBy: await phoneTitle,
      text: dto.text ?? oldTask.text,
      changedAt: DateTime.now(),
    );
    await localDs.saveTask(newTask);
    Logger.root.info('Task ${dto.id} edit locally');
    editTaskRemotely(newTask);
  }

  Future<void> editTaskRemotely(TaskModel task) async {
    final res = await remoteDs.editTask(
      lastRevision: localDs.getRevision(),
      id: task.id,
      task: TaskAppRequest(element: task),
    );
    localDs.saveRevision(res.revision);
    Logger.root.info('Task ${task.id} edit remotely');
  }

  @override
  Future<TaskModel> getTask(String id) async {
    Logger.root.info('Get task with id $id');
    return (await localDs.getTask(id))!;
  }

  @override
  Future<List<TaskModel>> getTasks() {
    Logger.root.info('Get tasks');
    return localDs.getList();
  }

  @override
  Future<void> updateTasks() async {
    final ListTaskAppResponse remoteList = await remoteDs.getList();
    if (remoteList.revision > localDs.getRevision()) {
      await localDs.saveList(remoteList.list);
      await localDs.saveRevision(remoteList.revision);
    } else {
      final List<TaskModel> tasks = await localDs.getList();
      final res = await remoteDs.patchList(
        lastRevision: localDs.getRevision(),
        request: ListTaskAppRequest(list: tasks),
      );
      await localDs.saveList(res.list);
      await localDs.saveRevision(res.revision);
    }
    Logger.root.info("Update tasks from network");
  }
}
