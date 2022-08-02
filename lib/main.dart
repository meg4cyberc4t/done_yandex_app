import 'dart:async';

import 'package:done_yandex_app/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Paint.enableDithering = true;
      runApp(const App());
    },
    _onAppError,
  );
}

void _onAppError(exception, stack) {
  debugPrint(exception.toString());
  debugPrintStack(stackTrace: stack);
  // здесь будет Crashlytics
}
