import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/app/domain/failures/failures.dart';
import 'package:movie_app/app/domain/movie/i_movie_repository.dart';
import 'package:movie_app/app/domain/movie/movie_success/movie_success.dart';
import 'package:movie_app/app/infrastructure/exception/exception.dart';
import 'package:movie_app/app/infrastructure/movie/movie_local_datasource.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieLocalDataSource _movieLocalDataSource;
  MovieRepository(
    this._movieLocalDataSource,
  );
  @override
  Future<Either<AppFailure, MovieSuccess>> getData() async {
    try {
      final data = await _movieLocalDataSource.getData();
      return right(MovieSuccess(data));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
