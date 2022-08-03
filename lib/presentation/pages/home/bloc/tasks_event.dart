part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.started() = StartedEvent;
  const factory TasksEvent.loading() = LoadingEvent;
  const factory TasksEvent.add({
    required String text,
    @Default(TaskImportance.basic) TaskImportance importance,
    DateTime? deadline,
    @Default(false) bool done,
  }) = AddTaskEvent;
  const factory TasksEvent.edit({
    required String id,
    String? text,
    TaskImportance? importance,
    DateTime? deadline,
    bool? done,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = EditTaskEvent;
  const factory TasksEvent.delete({
    required final String id,
  }) = DeleteTaskEvent;
  const factory TasksEvent.changeVisibility() = ChangeVisibilityEvent;
}
