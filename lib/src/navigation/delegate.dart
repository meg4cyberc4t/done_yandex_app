import 'package:done_yandex_app/src/navigation/navigation_state.dart';
import 'package:done_yandex_app/src/navigation/transition.dart';
import 'package:done_yandex_app/src/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/pages/task/task_screen_widget.dart';
import 'package:flutter/material.dart';

class AppRouterDelegate extends RouterDelegate<NavigationState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NavigationState> {
  NavigationState state = NavigationState(null, false);

  bool get isTaskPage => state.taskId != null;
  bool get isNewTaskPage => state.newTask;

  void gotoTasksList() {
    state.taskId = null;
    state.newTask = false;
    notifyListeners();
  }

  void gotoTask(String id) {
    state.taskId = id;
    state.newTask = false;
    notifyListeners();
  }

  void gotoNewTask() {
    state.taskId = null;
    state.newTask = true;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      transitionDelegate: AppTransitionDelegate(),
      key: navigatorKey,
      pages: [
        const MaterialPage(
          child: HomeScreenWidget(),
        ),
        if (isNewTaskPage)
          const MaterialPage(
            child: TaskScreenWidget(id: null),
          ),
        if (isTaskPage)
          MaterialPage(
            child: TaskScreenWidget(id: state.taskId),
          ),
      ],
    );
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Future<void> setNewRoutePath(NavigationState configuration) {
    state.taskId = configuration.taskId;
    return Future.value();
  }
}

extension BookShelfExtension on BuildContext {
  AppRouterDelegate get router =>
      (Router.of(this).routerDelegate as AppRouterDelegate);
}
