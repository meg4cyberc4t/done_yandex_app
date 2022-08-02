import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

export 'package:provider/provider.dart';

abstract class AppAsyncDependency extends AppDependency {
  final Completer<void> _inited = Completer();
  @override
  void init(BuildContext context) {
    initAsync(context)
        .then((value) => _inited.complete())
        .onError((error, stackTrace) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stackTrace);
    });
  }

  Future<void> initAsync(BuildContext context);
}

abstract class AppDependency extends ChangeNotifier {
  void init(BuildContext context);

  static T of<T extends AppDependency>(BuildContext context) =>
      context.read<T>();

  static T depend<T extends AppDependency>(BuildContext context) =>
      context.watch<T>();
}

class AsyncDependencyWidget<T extends AppAsyncDependency>
    extends ChangeNotifierProvider<T> {
  AsyncDependencyWidget({
    super.key,
    required T Function() create,
    required WidgetBuilder loaderBuilder,
    required super.child,
  }) : super(
          create: (context) => create()..init(context),
          builder: (context, child) => FutureBuilder(
            future: context.read<T>()._inited.future,
            builder: (context, snap) {
              if (snap.connectionState != ConnectionState.done) {
                return loaderBuilder(context);
              } else {
                return child!;
              }
            },
          ),
        );
}
