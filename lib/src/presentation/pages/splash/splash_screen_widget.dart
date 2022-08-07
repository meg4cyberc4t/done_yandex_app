import 'package:done_yandex_app/src/generated/assets.gen.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext _) {
    Widget body = Theme(
      data: AppTheme.theme(AppTheme.lightFigma),
      child: Builder(builder: (themeContext) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            body: Center(
              child: Assets.mobilePhone.image(
                height: 154,
                width: 154,
              ),
            ),
          ),
        );
      }),
    );

    if (MediaQuery.maybeOf(context) == null) {
      return MediaQuery.fromWindow(child: body);
    }
    return body;
  }
}
