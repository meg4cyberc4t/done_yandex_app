part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.started() = StartedEvent;
  const factory TasksEvent.loading() = LoadingEvent;
  const factory TasksEvent.add() = AddTaskEvent;
  const factory TasksEvent.edit() = EditTaskEvent;
  const factory TasksEvent.delete() = DeleteTaskEvent;
  const factory TasksEvent.changeVisibility() = ChangeVisibilityEvent;
}
