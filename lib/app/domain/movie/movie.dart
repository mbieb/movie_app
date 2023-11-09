import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    String? id,
    String? title,
    String? director,
    String? summary,
    List<String>? genres,
  }) = _Movie;
}
