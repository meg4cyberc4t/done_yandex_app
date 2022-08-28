import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

class AppTransitionDelegate extends DefaultTransitionDelegate {
  @override
  Iterable<RouteTransitionRecord> resolve({
    required List<RouteTransitionRecord> newPageRouteHistory,
    required Map<RouteTransitionRecord?, RouteTransitionRecord>
        locationToExitingPageRoute,
    required Map<RouteTransitionRecord?, List<RouteTransitionRecord>>
        pageRouteToPagelessRoutes,
  }) {
    Logger.root.info('Calling transition delegate');
    return super.resolve(
      newPageRouteHistory: newPageRouteHistory,
      locationToExitingPageRoute: locationToExitingPageRoute,
      pageRouteToPagelessRoutes: pageRouteToPagelessRoutes,
    );
  }
}
