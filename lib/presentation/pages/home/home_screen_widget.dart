import 'package:done_yandex_app/di/global_dependency.dart';
import 'package:done_yandex_app/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:done_yandex_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:done_yandex_app/presentation/pages/home/widgets/task_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  void initState() {
    super.initState();
    context.global.tasksBloc.add(const StartedEvent());
  }

  void addNewTask() {}

  void changeVisibility() {
    context.global.tasksBloc.add(const ChangeVisibilityEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: addNewTask,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TasksBloc, TasksState>(
        bloc: context.global.tasksBloc,
        builder: (BuildContext context, TasksState state) => CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: HomeAppBarDelegate(
                changeVisibility: changeVisibility,
                doneTasksCount: 2,
                visibility:
                    (state is LoadedTasksState) ? state.visibility : true,
              ),
              floating: true,
              pinned: true,
            ),
            if (state is LoadedTasksState)
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.tasks.length,
                    (context, index) => TaskListTile(task: state.tasks[index]),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
