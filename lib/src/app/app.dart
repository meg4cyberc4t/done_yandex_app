import 'package:done_yandex_app/src/data/sources/remote_config_ds.dart';
import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/navigation/delegate.dart';
import 'package:done_yandex_app/src/navigation/parser.dart';
import 'package:done_yandex_app/src/navigation/provider.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeObserver = RouteObserver();
    return Provider.value(
      value: routeObserver,
      child: MaterialApp.router(
        routerDelegate: AppRouterDelegate(),
        routeInformationParser: AppRouteInformationParser(),
        routeInformationProvider: DebugRouteInformationProvider(),
        theme: AppTheme.theme(
          AppTheme.lightFigma.copyWith(
            redImportance: getIt.remoteConfigDs.colorRedImportance(context),
          ),
        ),
        darkTheme: AppTheme.theme(
          AppTheme.darkFigma.copyWith(
            redImportance: getIt.remoteConfigDs.colorRedImportance(context),
          ),
        ),
        themeMode: ThemeMode.system,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: kDebugMode,
        onGenerateTitle: (context) => context.l10n.title,
      ),
    );
  }
}
