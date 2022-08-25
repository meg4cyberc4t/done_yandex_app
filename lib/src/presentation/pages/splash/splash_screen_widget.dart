import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/generated/assets.gen.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext _) {
    Widget body = Theme(
      data: AppTheme.theme(context.figma),
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
      body = MediaQuery.fromWindow(child: body);
    }
    return FutureBuilder(
      future: getIt.allReady(),
      builder: (context, snapshot) =>
          (snapshot.connectionState == ConnectionState.done)
              ? widget.child
              : body,
    );
  }
}
