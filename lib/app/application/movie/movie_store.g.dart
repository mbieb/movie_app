// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieStore on _MovieStore, Store {
  Computed<List<Movie>>? _$movieListComputed;

  @override
  List<Movie> get movieList =>
      (_$movieListComputed ??= Computed<List<Movie>>(() => super.movieList,
              name: '_MovieStore.movieList'))
          .value;
  Computed<List<Movie>>? _$filteredMoviesComputed;

  @override
  List<Movie> get filteredMovies => (_$filteredMoviesComputed ??=
          Computed<List<Movie>>(() => super.filteredMovies,
              name: '_MovieStore.filteredMovies'))
      .value;

  late final _$isLoadingAtom =
      Atom(name: '_MovieStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$failureOrSuccessOptionAtom =
      Atom(name: '_MovieStore.failureOrSuccessOption', context: context);

  @override
  Option<Either<AppFailure<dynamic>, MovieSuccess>> get failureOrSuccessOption {
    _$failureOrSuccessOptionAtom.reportRead();
    return super.failureOrSuccessOption;
  }

  @override
  set failureOrSuccessOption(
      Option<Either<AppFailure<dynamic>, MovieSuccess>> value) {
    _$failureOrSuccessOptionAtom
        .reportWrite(value, super.failureOrSuccessOption, () {
      super.failureOrSuccessOption = value;
    });
  }

  late final _$movieListOptionAtom =
      Atom(name: '_MovieStore.movieListOption', context: context);

  @override
  Option<List<Movie>> get movieListOption {
    _$movieListOptionAtom.reportRead();
    return super.movieListOption;
  }

  @override
  set movieListOption(Option<List<Movie>> value) {
    _$movieListOptionAtom.reportWrite(value, super.movieListOption, () {
      super.movieListOption = value;
    });
  }

  late final _$searchQueryAtom =
      Atom(name: '_MovieStore.searchQuery', context: context);

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$fetchMoviesAsyncAction =
      AsyncAction('_MovieStore.fetchMovies', context: context);

  @override
  Future<void> fetchMovies() {
    return _$fetchMoviesAsyncAction.run(() => super.fetchMovies());
  }

  late final _$_MovieStoreActionController =
      ActionController(name: '_MovieStore', context: context);

  @override
  void setSearchQuery(String query) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.setSearchQuery');
    try {
      return super.setSearchQuery(query);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMovie(MovieForm form) {
    final _$actionInfo =
        _$_MovieStoreActionController.startAction(name: '_MovieStore.addMovie');
    try {
      return super.addMovie(form);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeMovie(Movie? item) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.removeMovie');
    try {
      return super.removeMovie(item);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editMovie(MovieForm form) {
    final _$actionInfo = _$_MovieStoreActionController.startAction(
        name: '_MovieStore.editMovie');
    try {
      return super.editMovie(form);
    } finally {
      _$_MovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
failureOrSuccessOption: ${failureOrSuccessOption},
movieListOption: ${movieListOption},
searchQuery: ${searchQuery},
movieList: ${movieList},
filteredMovies: ${filteredMovies}
    ''';
  }
}
