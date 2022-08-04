import 'package:done_yandex_app/di/abstract_global_dependency.dart';
import 'package:done_yandex_app/di/app_async_dependency.dart';
import 'package:done_yandex_app/di/global_dependency.dart';
import 'package:done_yandex_app/navigation/routes.dart';
import 'package:done_yandex_app/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/presentation/pages/splash/splash_screen_widget.dart';
import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            debugShowCheckedModeBanner: kDebugMode,
            home: const HomeScreenWidget(),
            navigatorKey: context.global.navigation.key,
            onGenerateRoute: NavigationRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
