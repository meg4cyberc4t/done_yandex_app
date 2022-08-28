import 'package:done_yandex_app/src/navigation/navigation_state.dart';
import 'package:done_yandex_app/src/navigation/paths.dart';
import 'package:flutter/widgets.dart';

//Transform state <-> URL
class AppRouteInformationParser
    extends RouteInformationParser<NavigationState> {
  @override
  Future<NavigationState> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');
    if (routeInformation.location == Paths.addTask) {
      return NavigationState.addTask();
    } else if (uri.pathSegments.length > 1) {
      return NavigationState.task(uri.pathSegments[1]);
    } else {
      return NavigationState.tasks();
    }
  }

  @override
  RouteInformation? restoreRouteInformation(NavigationState configuration) {
    if (configuration.newTask) {
      return const RouteInformation(location: Paths.addTask);
    } else if (configuration.taskId == null) {
      return const RouteInformation(location: Paths.tasks);
    } else {
      return RouteInformation(location: Paths.taskPath(configuration.taskId!));
    }
  }
}
