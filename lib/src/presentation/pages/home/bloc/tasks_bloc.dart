// ignore_for_file: library_private_types_in_public_api

import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/data/models/dto/create_task_dto.dart';
import 'package:done_yandex_app/src/data/models/dto/edit_task_dto.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/data/sources/visibility_local_ds.dart';
import 'package:done_yandex_app/src/domain/tasks_repository_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

part 'tasks_bloc.freezed.dart';
part 'tasks_event.dart';
part 'tasks_state.dart';

@singleton
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  Future<void> _updatingData(TasksEvent event, Emitter<TasksState> emit) async {
    repos.updateTasks();
    await _loadingData(event, emit);
  }

  Future<void> _loadingData(TasksEvent event, Emitter<TasksState> emit) async {
    final tasks = await repos.getTasks();
    emit(
      LoadedTasksState(
        visibility: visibilityDs.getVisibility(),
        tasks: tasks,
      ),
    );
  }

  void _addTask(AddTaskEvent event, Emitter<TasksState> emit) async {
    await repos.createTask(
      CreateTaskDTO(
        text: event.text,
        deadline: event.deadline,
        done: event.done,
        importance: event.importance,
      ),
    );
    await _loadingData(event, emit);
  }

  void _editTask(EditTaskEvent event, Emitter<TasksState> emit) async {
    await repos.editTask(EditTaskDTO(
      id: event.id,
      deadline: event.deadline,
      done: event.done,
      importance: event.importance,
      text: event.text,
    ));
    await _loadingData(event, emit);
  }

  void _deleteTask(DeleteTaskEvent event, Emitter<TasksState> emit) async {
    await repos.deleteTask(event.id);
    await _loadingData(event, emit);
  }

  Future<void> _changeVisibility(
      TasksEvent event, Emitter<TasksState> emit) async {
    final bool newValue = !visibilityDs.getVisibility();
    await visibilityDs.saveVisibility(newValue);
    Logger.root.info("Change visibility to $newValue");
    if (state is LoadedTasksState) {
      emit((state as LoadedTasksState).copyWith(visibility: newValue));
    }
  }

  TasksBloc(
    this.repos,
    this.visibilityDs,
  ) : super(const InitialTasksState()) {
    on<StartedEvent>(_updatingData);
    on<LoadingEvent>(_loadingData);
    on<AddTaskEvent>(_addTask);
    on<EditTaskEvent>(_editTask);
    on<DeleteTaskEvent>(_deleteTask);
    on<ChangeVisibilityEvent>(_changeVisibility);
  }

  final TasksRepositoryInterface repos;
  final VisibilityLocalDataSource visibilityDs;
}
