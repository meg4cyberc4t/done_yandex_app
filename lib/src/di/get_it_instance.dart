import 'package:done_yandex_app/src/data/sources/remote_config_ds.dart';
import 'package:done_yandex_app/src/di/get_it_instance.config.dart';
import 'package:done_yandex_app/src/navigation/controller.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

extension AppDIExtension on GetIt {
  TasksBloc get tasksBloc => get<TasksBloc>();
  NavigationController get navigation => get<NavigationController>();
  RemoteConfigDataSource get remoteConfigDs => get<RemoteConfigDataSource>();
}
