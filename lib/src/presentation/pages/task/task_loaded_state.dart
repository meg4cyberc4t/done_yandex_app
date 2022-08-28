import 'package:done_yandex_app/src/data/models/task_model.dart';

abstract class TaskLoadedState {}

class NewTaskLoadedState extends TaskLoadedState {}

class NotFoundTaskLoadedState extends TaskLoadedState {}

class FoundTaskLoadedState extends TaskLoadedState {
  FoundTaskLoadedState(this.task);
  final TaskModel task;
}
