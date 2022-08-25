import 'package:done_yandex_app/src/data/sources/remote_config_ds.dart';
import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/navigation/routes.dart';
import 'package:done_yandex_app/src/presentation/pages/home/home_screen_widget.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      figma: AppTheme.lightFigma.copyWith(
        redImportance: getIt.remoteConfigDs.colorRedImportance(context),
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
          navigatorKey: getIt.navigation.key,
          onGenerateRoute: NavigationRoutes.onGenerateRoute,
        ),
      ),
    );
  }
}
