import 'package:flutter/material.dart';

class NavigationController {
  NavigationController._();
  static final NavigationController _instance = NavigationController._();
  factory NavigationController.init() => _instance;

  final GlobalKey<NavigatorState> _key = GlobalKey();

  GlobalKey<NavigatorState> get key => _key;

  void navigateTo(String page, {Object? arguments}) {
    _key.currentState?.pushNamed(page, arguments: arguments);
  }

  void pop([Object? result]) {
    _key.currentState?.pop(result);
  }

  Future<T> pushDialog<T>(RawDialogRoute<T> route) async {
    return _key.currentState?.push<T>(route) as Future<T>;
  }
}
