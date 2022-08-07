import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/pages/task/task_screen_widget.dart';
import 'package:flutter/material.dart';

class NavigationRoutes {
  static const home = "/";
  static const task = "/task";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case task:
        return MaterialPageRoute(
            builder: (_) =>
                TaskScreenWidget(task: settings.arguments as TaskModel?));
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreenWidget());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreenWidget());
    }
  }
}
