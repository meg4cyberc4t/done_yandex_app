import 'dart:convert';
import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:done_yandex_app/data/sources/tasks_local_ds_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TasksLocalDataSource extends ITasksLocalDataSource {
  static Future<TasksLocalDataSource> initAsync() async {
    await Hive.initFlutter();
    final Box tasksData = await Hive.openBox("tasks_local_data_source");
    return TasksLocalDataSource._(tasksData);
  }

  TasksLocalDataSource._(this.tasksData);

  final Box tasksData;

  String get listKey => 'list';
  String taskKey(String id) => 'task_$id';
  String get lastRevisionKey => 'last_revision_key';

  @override
  int getRevision() => tasksData.get(lastRevisionKey, defaultValue: 0);

  @override
  Future<void> saveRevision(int revision) =>
      tasksData.put(lastRevisionKey, revision);

  @override
  Future<List<TaskModel>> getList() {
    final String? data = tasksData.get(listKey);
    if (data == null) return Future.value([]);
    List<TaskModel> decode(String raw) {
      List rawJ = jsonDecode(raw);
      return rawJ.map((e) => TaskModel.fromJson(e)).toList();
    }

    if (data.length > 3000) {
      return compute<String, List<TaskModel>>(decode, data);
    }
    return Future.value(decode(data));
  }

  @override
  Future<void> saveList(List<TaskModel> list) =>
      tasksData.put(listKey, jsonEncode(list));

  @override
  Future<TaskModel?> getTask(String id) {
    final String? data = tasksData.get(taskKey(id));
    if (data == null) return Future.value(null);
    TaskModel decode(String raw) => TaskModel.fromJson(jsonDecode(raw));
    if (data.length > 3000) {
      return compute<String, TaskModel>(decode, data);
    }
    return Future.value(decode(data));
  }

  @override
  Future<void> saveTask(TaskModel request) =>
      tasksData.put(taskKey(request.id), request.toJson().toString());

  @override
  Future<void> deleteTask(String id) => tasksData.delete(taskKey(id));
}
