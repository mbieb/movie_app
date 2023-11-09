import 'package:dartz/dartz.dart';
import 'package:movie_app/app/domain/failures/failures.dart';
import 'package:movie_app/app/domain/movie/movie_success/movie_success.dart';

abstract class IMovieRepository {
  Future<Either<AppFailure, MovieSuccess>> getData();
}
