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
        builder: (context) {
          return MaterialApp(
            initialRoute: NavigationRoutes.home,
            theme: AppTheme.theme(AppTheme.lightFigma),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: kDebugMode,
            home: const HomeScreenWidget(),
            onGenerateTitle: (context) => context.l10n.title,
            navigatorKey: context.global.navigation.key,
            onGenerateRoute: NavigationRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
