import 'dart:convert';

import 'package:done_yandex_app/data/models/app_responses.dart';
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

  @override
  Future<ListTaskAppResponse?> getList() {
    final String? data = tasksData.get(listKey);
    if (data == null) return Future.value(null);
    ListTaskAppResponse decode(String raw) =>
        ListTaskAppResponse.fromJson(jsonDecode(raw));
    if (data.length > 3000) {
      return compute<String, ListTaskAppResponse>(decode, data);
    }
    return Future.value(decode(data));
  }

  @override
  Future<void> saveList(ListTaskAppResponse request) =>
      tasksData.put(listKey, jsonEncode(request));

  @override
  Future<TaskAppResponse?> getTask(String id) {
    final String? data = tasksData.get(taskKey(id));
    if (data == null) return Future.value(null);
    TaskAppResponse decode(String raw) =>
        TaskAppResponse.fromJson(jsonDecode(raw));
    if (data.length > 3000) {
      return compute<String, TaskAppResponse>(decode, data);
    }
    return Future.value(decode(data));
  }

  @override
  Future<void> saveTask(TaskAppResponse request) =>
      tasksData.put(listKey, request.toJson().toString());
}
