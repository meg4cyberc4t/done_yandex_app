// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/sources/remote_config_ds.dart' as _i4;
import '../data/sources/tasks_local_ds.dart' as _i5;
import '../data/sources/tasks_remote_ds.dart' as _i6;
import '../data/sources/visibility_local_ds.dart' as _i9;
import '../domain/tasks_repository.dart' as _i8;
import '../domain/tasks_repository_interface.dart' as _i7;
import '../enviroment/enviroment.dart' as _i3;
import '../presentation/pages/home/bloc/tasks_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppEnviroment>(() => _i3.AppEnviroment());
  gh.singletonAsync<_i4.RemoteConfigDataSource>(
      () => _i4.RemoteConfigDataSource.initAsync());
  gh.factoryAsync<_i5.TasksLocalDataSource>(
      () => _i5.TasksLocalDataSource.initAsync());
  gh.factory<_i6.TasksRemoteDataSource>(
      () => _i6.TasksRemoteDataSource.fromEnv(get<_i3.AppEnviroment>()));
  gh.singletonAsync<_i7.TasksRepositoryInterface>(() async =>
      _i8.TasksRepository(
          localDs: await get.getAsync<_i5.TasksLocalDataSource>(),
          remoteDs: get<_i6.TasksRemoteDataSource>()));
  gh.factoryAsync<_i9.VisibilityLocalDataSource>(
      () => _i9.VisibilityLocalDataSource.initAsync());
  gh.singletonAsync<_i10.TasksBloc>(() async => _i10.TasksBloc(
      await get.getAsync<_i7.TasksRepositoryInterface>(),
      await get.getAsync<_i9.VisibilityLocalDataSource>()));
  return get;
}
