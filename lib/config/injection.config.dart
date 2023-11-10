// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/application/movie/movie_store.dart' as _i7;
import '../app/application/movie/update_movie_store.dart' as _i4;
import '../app/domain/movie/i_movie_repository.dart' as _i5;
import '../app/infrastructure/movie/movie_local_datasource.dart' as _i3;
import '../app/infrastructure/movie/movie_repository.dart' as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.MovieLocalDataSource>(() => _i3.MovieLocalDataSource());
  gh.factory<_i4.UpdateMovieStore>(() => _i4.UpdateMovieStore());
  gh.lazySingleton<_i5.IMovieRepository>(
      () => _i6.MovieRepository(gh<_i3.MovieLocalDataSource>()));
  gh.factory<_i7.MovieStore>(() => _i7.MovieStore(gh<_i5.IMovieRepository>()));
  return getIt;
}
