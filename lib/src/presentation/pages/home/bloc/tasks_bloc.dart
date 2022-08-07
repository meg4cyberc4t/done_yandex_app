// ignore_for_file: library_private_types_in_public_api

import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/data/models/app_requests.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/data/sources/tasks_local_ds.dart';
import 'package:done_yandex_app/src/data/sources/tasks_remote_ds.dart';
import 'package:done_yandex_app/src/data/sources/visibility_local_ds.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  Future<void> loadingData(TasksEvent event, Emitter<TasksState> emit) async {
    emit(
      LoadedTasksState(
        visibility: visibilityDs.getVisibility(),
        tasks: await localDs.getList(),
        revision: localDs.getRevision(),
      ),
    );
    debugPrint('Downloaded tasks from the cache');
    final remoteRes = await remoteDs.getList();
    await localDs.saveRevision(remoteRes.revision);
    emit(
      LoadedTasksState(
        visibility: visibilityDs.getVisibility(),
        tasks: remoteRes.list,
        revision: remoteRes.revision,
      ),
    );
    debugPrint('Downloaded tasks from the network');
    await localDs.saveList(remoteRes.list);
    debugPrint('Tasks are saved to the phone');
  }

  void addTask(AddTaskEvent event, Emitter<TasksState> emit) async {
    if (state is! LoadedTasksState) return;
    final LoadedTasksState loadedState = state as LoadedTasksState;
    final TaskModel newTask = TaskModel(
      id: const Uuid().v4().toString(),
      text: event.text,
      importance: event.importance,
      deadline: event.deadline,
      done: event.done,
      createdAt: DateTime.now(),
      changedAt: DateTime.now(),
      lastUpdatedBy: "123123", // TODO: #!
    );
    await localDs.saveTask(newTask);
    await remoteDs.createTask(
        lastRevision: loadedState.revision,
        element: TaskAppRequest(element: newTask));
    await loadingData(event, emit);
  }

  void editTask(EditTaskEvent event, Emitter<TasksState> emit) async {
    if (state is! LoadedTasksState) return;
    final LoadedTasksState loadedState = state as LoadedTasksState;
    final TaskModel oldTask =
        loadedState.tasks.firstWhere((element) => event.id == element.id);
    final TaskModel newTask = oldTask.copyWith(
      done: event.done ?? oldTask.done,
      deadline: event.deadline ?? oldTask.deadline,
      importance: event.importance ?? oldTask.importance,
      lastUpdatedBy: "123123", // # TODO:!
      text: event.text ?? oldTask.text,
      changedAt: DateTime.now(),
    );
    await localDs.saveTask(newTask);
    await remoteDs.editTask(
      id: oldTask.id,
      lastRevision: loadedState.revision,
      task: TaskAppRequest(element: newTask),
    );
    await loadingData(event, emit);
  }

  void deleteTask(DeleteTaskEvent event, Emitter<TasksState> emit) async {
    if (state is! LoadedTasksState) return;
    final LoadedTasksState loadedState = state as LoadedTasksState;
    final TaskModel task =
        loadedState.tasks.firstWhere((element) => event.id == element.id);
    await localDs.deleteTask(task.id);
    await remoteDs.deleteTask(
      id: task.id,
      lastRevision: loadedState.revision,
    );
    await loadingData(event, emit);
  }

  Future<void> changeVisibility(
      TasksEvent event, Emitter<TasksState> emit) async {
    final bool newValue = !visibilityDs.getVisibility();
    await visibilityDs.saveVisibility(newValue);
    if (state is LoadedTasksState) {
      emit((state as LoadedTasksState).copyWith(visibility: newValue));
    }
  }

  TasksBloc(this.remoteDs, this.localDs, this.visibilityDs)
      : super(const InitialTasksState()) {
    on<StartedEvent>(loadingData);
    on<LoadingEvent>(loadingData);
    on<AddTaskEvent>(addTask);
    on<EditTaskEvent>(editTask);
    on<DeleteTaskEvent>(deleteTask);
    on<ChangeVisibilityEvent>(changeVisibility);
  }

  final TasksRemoteDataSource remoteDs;
  final TasksLocalDataSource localDs;
  final VisibilityLocalDataSource visibilityDs;
}
