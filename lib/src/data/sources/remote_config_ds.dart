import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

@singleton
class RemoteConfigDataSource {
  RemoteConfigDataSource._(this.remoteDs);
  final FirebaseRemoteConfig remoteDs;

  @factoryMethod
  static Future<RemoteConfigDataSource> initAsync() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setDefaults({
      keyImportance: false,
    });
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(),
      ),
    );
    try {
      await remoteConfig.fetchAndActivate();
    } catch (e) {
      Logger.root.warning("Not updating remote config");
    }
    return RemoteConfigDataSource._(remoteConfig);
  }

  static String get keyImportance => 'red_importance';

  bool get redImportance => remoteDs.getBool(keyImportance);
}

extension ColorConfigExtension on RemoteConfigDataSource {
  Color colorRedImportance(BuildContext context) => redImportance
      ? (Theme.of(context).brightness == Brightness.light
              ? AppTheme.lightFigma
              : AppTheme.darkFigma)
          .redImportance
      : const Color(0xFF793cd8);
}
