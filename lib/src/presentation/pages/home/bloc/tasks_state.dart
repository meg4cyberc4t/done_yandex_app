part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = InitialTasksState;
  const factory TasksState.loaded({
    required final bool visibility,
    required final List<TaskModel> tasks,
  }) = LoadedTasksState;
}
