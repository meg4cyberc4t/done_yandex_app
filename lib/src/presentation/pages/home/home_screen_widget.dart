import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/navigation/routes.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/add_task_list_tile.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:done_yandex_app/src/presentation/pages/home/widgets/task_list_tile/task_list_tile.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  void initState() {
    super.initState();
    getIt.tasksBloc.add(const StartedEvent());
  }

  void addNewTask() => getIt.navigation.navigateTo(NavigationRoutes.task);

  void changeVisibility() {
    Vibrate.feedback(FeedbackType.success);
    getIt.tasksBloc.add(const ChangeVisibilityEvent());
  }

  void deleteTask(String id) => getIt.tasksBloc.add(DeleteTaskEvent(id: id));

  void doneTask(String id, bool oldValue) {
    Vibrate.feedback(FeedbackType.selection);
    getIt.tasksBloc.add(EditTaskEvent(id: id, done: !oldValue));
  }

  void openTask(TaskModel model) =>
      getIt.navigation.navigateTo(NavigationRoutes.task, arguments: model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: addNewTask,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TasksBloc, TasksState>(
        bloc: getIt.tasksBloc,
        builder: (BuildContext context, TasksState state) {
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
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverStack(
                  insetOnOverlap: false,
                  children: [
                    SliverPositioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.figma.backSecondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      sliver: MultiSliver(
                        children: [
                          if (state is LoadedTasksState)
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                childCount: state.tasks.length,
                                (context, index) => TaskListTile(
                                  visibilityDone: state.visibility,
                                  task: state.tasks[index],
                                  onDelete: () =>
                                      deleteTask(state.tasks[index].id),
                                  onDone: () => doneTask(
                                    state.tasks[index].id,
                                    state.tasks[index].done,
                                  ),
                                  onPressed: () => openTask(state.tasks[index]),
                                ),
                              ),
                            ),
                          const SliverToBoxAdapter(
                            child: AddTaskListTile(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.of(context).padding.bottom),
              )
            ],
          );
        },
      ),
    );
  }
}
