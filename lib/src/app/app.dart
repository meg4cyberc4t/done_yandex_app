import 'package:done_yandex_app/src/di/abstract_global_dependency.dart';
import 'package:done_yandex_app/src/di/app_async_dependency.dart';
import 'package:done_yandex_app/src/di/global_dependency.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/navigation/routes.dart';
import 'package:done_yandex_app/src/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/pages/splash/splash_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncDependencyWidget<IGlobalDependency>(
      create: GlobalDependency.new,
      loaderBuilder: (context) => const SplashScreenWidget(),
      child: Builder(
        builder: (BuildContext context) => AppTheme(
          figma: AppTheme.lightFigma.copyWith(
            red: context.global.remoteConfig.getBool('red_importance')
                ? AppTheme.lightFigma.red
                : const Color(0xFF793cd8),
          ),
          child: Builder(
            builder: (context) => MaterialApp(
              initialRoute: NavigationRoutes.home,
              theme: AppTheme.theme(context.figma),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: kDebugMode,
              home: const HomeScreenWidget(),
              onGenerateTitle: (context) => context.l10n.title,
              navigatorKey: context.global.navigation.key,
              onGenerateRoute: NavigationRoutes.onGenerateRoute,
            ),
          ),
        ),
      ),
    );
  }
}
