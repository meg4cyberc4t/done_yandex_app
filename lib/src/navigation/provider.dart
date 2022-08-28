import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class DebugRouteInformationProvider extends PlatformRouteInformationProvider {
  DebugRouteInformationProvider()
      : super(
            initialRouteInformation: RouteInformation(
                location: PlatformDispatcher.instance.defaultRouteName));

  @override
  Future<bool> didPushRoute(String route) {
    Logger.root.info('Platform reports $route');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    Logger.root.info('Platform reports routeinformation: $routeInformation');
    return super.didPushRouteInformation(routeInformation);
  }
}
