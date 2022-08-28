import 'package:done_yandex_app/src/data/models/dto/create_task_dto.dart';
import 'package:done_yandex_app/src/data/models/dto/edit_task_dto.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';

abstract class TasksRepositoryInterface {
  Future<TaskModel> getTask(String id);
  Future<void> createTask(CreateTaskDTO dto);
  Future<void> editTask(EditTaskDTO dto);
  Future<void> deleteTask(String id);

  Future<List<TaskModel>> getTasks();
  Future<void> updateTasks();
}
