import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

class AppTransitionDelegate extends TransitionDelegate {
  @override
  Iterable<RouteTransitionRecord> resolve({
    required List<RouteTransitionRecord> newPageRouteHistory,
    required Map<RouteTransitionRecord?, RouteTransitionRecord>
        locationToExitingPageRoute,
    required Map<RouteTransitionRecord?, List<RouteTransitionRecord>>
        pageRouteToPagelessRoutes,
  }) {
    Logger.root.info('Calling transition delegate');
    for (var element in newPageRouteHistory) {
      if (element.isWaitingForEnteringDecision) {
        Logger.root.info('Element $element is marked for push');
        element.markForPush();
      }
      if (element.isWaitingForExitingDecision) {
        Logger.root.info('Element $element is marked for pop');
        element.markForPop();
      }
    }
    return newPageRouteHistory;
  }
}
