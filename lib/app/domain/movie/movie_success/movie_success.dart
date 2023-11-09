import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
part 'movie_success.freezed.dart';

@freezed
class MovieSuccess with _$MovieSuccess {
  const factory MovieSuccess(List<Movie> data) = _MovieSuccess;
}
