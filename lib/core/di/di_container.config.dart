// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../feature/app/data/repo_impl/prefs_repository_impl.dart' as _i580;
import '../../feature/app/domain/repositories/prefs_repository.dart' as _i880;
import '../../feature/task/presentation/controller/task_bloc.dart' as _i811;
import 'di_container.dart' as _i198;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i811.TaskBloc>(() => _i811.TaskBloc());
  gh.singleton<_i974.Logger>(() => appModule.logger);
  await gh.singletonAsync<_i460.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i880.PrefsRepository>(
      () => _i580.PrefsRepositoryImpl(gh<_i460.SharedPreferences>()));
  return getIt;
}

class _$AppModule extends _i198.AppModule {}
