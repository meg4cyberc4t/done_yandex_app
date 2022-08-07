import 'dart:async';
import 'package:done_yandex_app/firebase_options.dart';
import 'package:done_yandex_app/src/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Paint.enableDithering = true;
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen((record) {
        debugPrint('${record.level.name}: ${record.time}: ${record.message}');
      });
      runApp(const App());
    },
    _onAppError,
  );
}

void _onAppError(exception, stack) async {
  Logger.root.info(exception);
  debugPrintStack(stackTrace: stack);
  if (!kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  await FirebaseCrashlytics.instance.recordError(exception, stack);
}
