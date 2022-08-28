import 'dart:convert';

import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/data/sources/tasks_local_ds_interface.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class TasksLocalDataSource extends ITasksLocalDataSource {
  @factoryMethod
  static Future<TasksLocalDataSource> initAsync() async {
    await Hive.initFlutter();
    final Box tasksData = await Hive.openBox("tasks_local_data_source");
    final Box revData = await Hive.openBox("revision");

    return TasksLocalDataSource._(
      tasksData,
      revData,
    );
  }

  TasksLocalDataSource._(this.tasksData, this.revisionData);

  final Box tasksData;
  final Box revisionData;

  String get listKey => 'list';
  String get lastRevisionKey => 'last_revision_key';

  @override
  int getRevision() => revisionData.get(lastRevisionKey, defaultValue: 0);

  @override
  Future<void> saveRevision(int revision) =>
      revisionData.put(lastRevisionKey, revision);

  @override
  Future<List<TaskModel>> getList() async {
    return tasksData.values
        .map((e) => TaskModel.fromJson(jsonDecode(e)))
        .toList();
  }

  @override
  Future<void> saveList(List<TaskModel> list) => tasksData.putAll({
        for (var item in list) item.id: jsonEncode(item),
      });

  @override
  Future<TaskModel?> getTask(String id) async {
    final raw = tasksData.get(id);
    if (raw == null) return null;
    return TaskModel.fromJson(jsonDecode(raw));
  }

  @override
  Future<void> saveTask(TaskModel request) {
    return tasksData.put(request.id, jsonEncode(request));
  }

  @override
  Future<void> deleteTask(String id) => tasksData.delete(id);
}
