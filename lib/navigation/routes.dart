import 'package:done_yandex_app/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/presentation/pages/task/task_screen_widget.dart';
import 'package:flutter/material.dart';

class NavigationRoutes {
  static const home = "/";
  static const task = "/task";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case task:
        return MaterialPageRoute(builder: (_) => const TaskScreenWidget());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreenWidget());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreenWidget());
    }
  }
}
