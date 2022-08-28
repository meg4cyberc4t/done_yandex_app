import 'dart:ui';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class DebugRouteInformationProvider extends PlatformRouteInformationProvider {
  DebugRouteInformationProvider()
      : super(
            initialRouteInformation: RouteInformation(
                location: PlatformDispatcher.instance.defaultRouteName));

  @override
  Future<bool> didPushRoute(String route) async {
    await FirebaseAnalytics.instance.logSelectContent(
      contentType: "routing",
      itemId: route,
    );
    Logger.root.info('Platform reports $route');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    Logger.root.info('Platform reports routeinformation: $routeInformation');
    return super.didPushRouteInformation(routeInformation);
  }
}
