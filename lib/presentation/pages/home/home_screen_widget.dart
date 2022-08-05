import 'package:done_yandex_app/data/models/task_model.dart';
import 'package:done_yandex_app/di/global_dependency.dart';
import 'package:done_yandex_app/navigation/routes.dart';
import 'package:done_yandex_app/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:done_yandex_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:done_yandex_app/presentation/pages/home/widgets/task_list_tile.dart';
import 'package:done_yandex_app/presentation/theme/app_theme.dart';
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

  void addNewTask() {
    context.global.tasksBloc.add(
      const AddTaskEvent(
        text: "Teeext",
      ),
    );
  }

  void changeVisibility() {
    context.global.tasksBloc.add(const ChangeVisibilityEvent());
  }

  void deleteTask(String id) {
    context.global.tasksBloc.add(DeleteTaskEvent(id: id));
  }

  void doneTask(String id, bool oldValue) {
    context.global.tasksBloc.add(EditTaskEvent(id: id, done: !oldValue));
  }

  void openTask(TaskModel model) {
    context.global.navigation.navigateTo(NavigationRoutes.task);
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
        builder: (BuildContext context, TasksState state) {
          debugPrint('TasksBlocBuild');
          return CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: HomeAppBarDelegate(
                  changeVisibility: changeVisibility,
                  doneTasksCount: (state is LoadedTasksState)
                      ? state.tasks.where((element) => element.done).length
                      : 0,
                  visibility:
                      (state is LoadedTasksState) ? state.visibility : true,
                ),
                floating: true,
                pinned: true,
              ),
              if (state is LoadedTasksState)
                SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    sliver: SliverToBoxAdapter(
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: context.figma.backSecondary,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.tasks.length,
                          itemBuilder: (context, index) => TaskListTile(
                            visibilityDone: state.visibility,
                            task: state.tasks[index],
                            onDelete: () => deleteTask(state.tasks[index].id),
                            onDone: () => doneTask(
                              state.tasks[index].id,
                              state.tasks[index].done,
                            ),
                            onPressed: () => openTask(state.tasks[index]),
                          ),
                        ),
                      ),
                    )),
            ],
          );
        },
      ),
    );
  }
}
