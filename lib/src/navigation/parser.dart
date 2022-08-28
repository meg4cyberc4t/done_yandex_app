import 'package:done_yandex_app/src/navigation/navigation_state.dart';
import 'package:done_yandex_app/src/navigation/paths.dart';
import 'package:flutter/widgets.dart';

//Transform state <-> URL
class AppRouteInformationParser
    extends RouteInformationParser<NavigationState> {
  @override
  Future<NavigationState> parseRouteInformation(
      RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? '');
    if (uri.pathSegments.isEmpty) {
      return Future.value(NavigationState(null, false));
    }
    switch (uri.pathSegments[0]) {
      case Paths.tasks:
        return Future.value(NavigationState(null));
      case Paths.task:
        return Future.value(NavigationState(uri.pathSegments[1]));
      default:
        return Future.value(NavigationState(null));
    }
  }

  @override
  RouteInformation? restoreRouteInformation(NavigationState configuration) {
    if (configuration.taskId == null) {
      return const RouteInformation(location: Paths.tasks);
    } else {
      return RouteInformation(
          location: "/${Paths.task}/${configuration.taskId}");
    }
  }
}