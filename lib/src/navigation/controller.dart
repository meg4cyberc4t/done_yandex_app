// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';

// @singleton
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationController {
  @factoryMethod
  factory NavigationController() => instance;
  NavigationController._();
  static NavigationController instance = NavigationController._();

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
