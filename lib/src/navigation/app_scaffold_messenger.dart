import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppScaffoldMessenger {
  @factoryMethod
  AppScaffoldMessenger();
  final GlobalKey<ScaffoldMessengerState> key =
      GlobalKey<ScaffoldMessengerState>();
}
