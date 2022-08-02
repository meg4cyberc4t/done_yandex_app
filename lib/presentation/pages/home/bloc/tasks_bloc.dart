// ignore_for_file: library_private_types_in_public_api

import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:done_yandex_app/data/sources/tasks_local_ds.dart';
import 'package:done_yandex_app/data/sources/tasks_remote_ds.dart';
import 'package:done_yandex_app/data/sources/visibility_local_ds.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  void loadingData(TasksEvent event, Emitter<TasksState> emit) async {
    final localRes = await localDs.getList();
    if (localRes != null) {
      debugPrint('Downloaded tasks from the phone');
      emit(
        LoadedTasksState(
          visibility: visibilityDs.getVisibility(),
          tasks: localRes.list,
          revision: localRes.revision,
        ),
      );
    }
    final remoteRes = await remoteDs.getList();
    debugPrint('Downloaded tasks from the network');
    emit(
      LoadedTasksState(
        visibility: visibilityDs.getVisibility(),
        tasks: remoteRes.list,
        revision: remoteRes.revision,
      ),
    );
    await localDs.saveList(remoteRes);
    debugPrint('Tasks are saved to the phone');
  }

  void addTask(AddTaskEvent event, Emitter<TasksState> emit) async {}

  void editTask(EditTaskEvent event, Emitter<TasksState> emit) async {}

  void deleteTask(DeleteTaskEvent event, Emitter<TasksState> emit) async {}

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
