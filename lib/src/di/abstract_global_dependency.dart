import 'package:dio/dio.dart';
import 'package:done_yandex_app/src/di/app_async_dependency.dart';
import 'package:done_yandex_app/src/enviroment/enviroment.dart';
import 'package:done_yandex_app/src/navigation/controller.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';

abstract class IGlobalDependency extends AppAsyncDependency {
  Dio get dio;
  AppEnviroment get env;
  TasksBloc get tasksBloc;
  NavigationController get navigation;
}
