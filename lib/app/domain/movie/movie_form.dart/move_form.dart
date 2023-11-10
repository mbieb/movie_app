import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/app/domain/failures/failures.dart';
part 'move_form.freezed.dart';

@freezed
class MovieForm with _$MovieForm {
  const MovieForm._();
  const factory MovieForm({
    required Option<String> id,
    required Option<String> title,
    required Option<String> director,
    required Option<String> summary,
    required Option<List<String>> genres,
  }) = _MovieForm;

  factory MovieForm.init() => MovieForm(
        id: none(),
        title: none(),
        director: none(),
        summary: none(),
        genres: none(),
      );

  Option<ValueFailure> get failureOption {
    return failureOrTitle
        .andThen(failureOrDirector)
        .andThen(failureOrSummary)
        .andThen(failureOrGenres)
        .fold((f) => some(f), (_) => none());
  }

  bool get isValid => failureOption.fold(() => true, (a) => false);

  Either<ValueFailure<String>, Unit> get failureOrTitle {
    return title.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (title) => title.isNotEmpty
          ? right(unit)
          : left(const ValueFailure.empty(failedValue: '')),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrDirector {
    return director.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (director) => director.isNotEmpty
          ? right(unit)
          : left(const ValueFailure.empty(failedValue: '')),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrSummary {
    return summary.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (summary) => summary.isNotEmpty
          ? right(unit)
          : left(const ValueFailure.empty(failedValue: '')),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrGenres {
    return genres.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (genres) => genres.isNotEmpty
          ? right(unit)
          : left(const ValueFailure.empty(failedValue: '')),
    );
  }
}
