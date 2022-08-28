import 'dart:async';

import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:done_yandex_app/src/presentation/pages/task/task_loaded_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/pages/task/task_loaded_state.dart';
import 'package:flutter/material.dart';

class TaskScreenWidget extends StatefulWidget {
  const TaskScreenWidget({
    required this.id,
    Key? key,
  }) : super(key: key);
  final String? id;

  @override
  State<TaskScreenWidget> createState() => _TaskScreenWidgetState();
}

class _TaskScreenWidgetState extends State<TaskScreenWidget> {
  Future<TaskLoadedState> loadTask(String? id) async {
    if (id == null) {
      return NewTaskLoadedState();
    }
    if (getIt.tasksBloc.state is! LoadedTasksState) {
      return NotFoundTaskLoadedState();
    }
    try {
      final st = (getIt.tasksBloc.state as LoadedTasksState);
      final elem = st.tasks.firstWhere((element) => element.id == id);
      return FoundTaskLoadedState(elem);
    } catch (e) {
      return NotFoundTaskLoadedState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<TaskLoadedState>(
        future: loadTask(widget.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data is FoundTaskLoadedState) {
              return TaskLoadedScreenWidget(
                  task: (snapshot.data as FoundTaskLoadedState).task);
            }

            return const TaskLoadedScreenWidget(task: null);
          } else {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
