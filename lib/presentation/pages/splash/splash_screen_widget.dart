import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Hero(
                    tag: 'main_headline',
                    child: Text(
                      'Сделано',
                      style: Theme.of(themeContext).textTheme.headline5,
                    ),
                  ),
                  Text(
                    'Правильный подход в вашему времени!',
                    style: Theme.of(themeContext).textTheme.bodyText1,
                  )
                ],
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
