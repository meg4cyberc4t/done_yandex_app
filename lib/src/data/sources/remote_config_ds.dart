import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteConfigDataSource {
  RemoteConfigDataSource._(this.remoteDs);
  final FirebaseRemoteConfig remoteDs;

  @factoryMethod
  static Future<RemoteConfigDataSource> initAsync() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(),
      ),
    );
    await remoteConfig.fetchAndActivate();
    return RemoteConfigDataSource._(remoteConfig);
  }

  bool get redImportance => remoteDs.getBool('red_importance');
}

extension ColorConfigExtension on RemoteConfigDataSource {
  Color colorRedImportance(BuildContext context) =>
      redImportance ? context.figma.red : const Color(0xFF793cd8);
}
