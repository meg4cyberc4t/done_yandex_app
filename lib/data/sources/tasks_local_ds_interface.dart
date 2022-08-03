import 'package:done_yandex_app/data/models/task_model.dart';

abstract class ITasksLocalDataSource {
  int getRevision();
  Future<void> saveRevision(int revision);

  Future<List<TaskModel>> getList();
  Future<void> saveList(List<TaskModel> list);

  Future<TaskModel?> getTask(String id);
  Future<void> saveTask(TaskModel request);
  Future<void> deleteTask(String id);
}
