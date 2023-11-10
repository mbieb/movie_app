// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieForm {
  Option<String> get title => throw _privateConstructorUsedError;
  Option<String> get director => throw _privateConstructorUsedError;
  Option<String> get summary => throw _privateConstructorUsedError;
  Option<List<String>> get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieFormCopyWith<MovieForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFormCopyWith<$Res> {
  factory $MovieFormCopyWith(MovieForm value, $Res Function(MovieForm) then) =
      _$MovieFormCopyWithImpl<$Res, MovieForm>;
  @useResult
  $Res call(
      {Option<String> title,
      Option<String> director,
      Option<String> summary,
      Option<List<String>> genres});
}

/// @nodoc
class _$MovieFormCopyWithImpl<$Res, $Val extends MovieForm>
    implements $MovieFormCopyWith<$Res> {
  _$MovieFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? summary = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Option<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieFormImplCopyWith<$Res>
    implements $MovieFormCopyWith<$Res> {
  factory _$$MovieFormImplCopyWith(
          _$MovieFormImpl value, $Res Function(_$MovieFormImpl) then) =
      __$$MovieFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> title,
      Option<String> director,
      Option<String> summary,
      Option<List<String>> genres});
}

/// @nodoc
class __$$MovieFormImplCopyWithImpl<$Res>
    extends _$MovieFormCopyWithImpl<$Res, _$MovieFormImpl>
    implements _$$MovieFormImplCopyWith<$Res> {
  __$$MovieFormImplCopyWithImpl(
      _$MovieFormImpl _value, $Res Function(_$MovieFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? summary = null,
    Object? genres = null,
  }) {
    return _then(_$MovieFormImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Option<List<String>>,
    ));
  }
}

/// @nodoc

class _$MovieFormImpl extends _MovieForm {
  const _$MovieFormImpl(
      {required this.title,
      required this.director,
      required this.summary,
      required this.genres})
      : super._();

  @override
  final Option<String> title;
  @override
  final Option<String> director;
  @override
  final Option<String> summary;
  @override
  final Option<List<String>> genres;

  @override
  String toString() {
    return 'MovieForm(title: $title, director: $director, summary: $summary, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieFormImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.genres, genres) || other.genres == genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, director, summary, genres);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieFormImplCopyWith<_$MovieFormImpl> get copyWith =>
      __$$MovieFormImplCopyWithImpl<_$MovieFormImpl>(this, _$identity);
}

abstract class _MovieForm extends MovieForm {
  const factory _MovieForm(
      {required final Option<String> title,
      required final Option<String> director,
      required final Option<String> summary,
      required final Option<List<String>> genres}) = _$MovieFormImpl;
  const _MovieForm._() : super._();

  @override
  Option<String> get title;
  @override
  Option<String> get director;
  @override
  Option<String> get summary;
  @override
  Option<List<String>> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieFormImplCopyWith<_$MovieFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
