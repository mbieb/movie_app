// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_movie_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UpdateMovieStore on _UpdateMovieStore, Store {
  Computed<bool>? _$enableButtonComputed;

  @override
  bool get enableButton =>
      (_$enableButtonComputed ??= Computed<bool>(() => super.enableButton,
              name: '_UpdateMovieStore.enableButton'))
          .value;

  late final _$isLoadingAtom =
      Atom(name: '_UpdateMovieStore.isLoading', context: context);

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

  late final _$movieFormAtom =
      Atom(name: '_UpdateMovieStore.movieForm', context: context);

  @override
  MovieForm get movieForm {
    _$movieFormAtom.reportRead();
    return super.movieForm;
  }

  @override
  set movieForm(MovieForm value) {
    _$movieFormAtom.reportWrite(value, super.movieForm, () {
      super.movieForm = value;
    });
  }

  late final _$titleTextControllerAtom =
      Atom(name: '_UpdateMovieStore.titleTextController', context: context);

  @override
  TextEditingController get titleTextController {
    _$titleTextControllerAtom.reportRead();
    return super.titleTextController;
  }

  @override
  set titleTextController(TextEditingController value) {
    _$titleTextControllerAtom.reportWrite(value, super.titleTextController, () {
      super.titleTextController = value;
    });
  }

  late final _$directorTextControllerAtom =
      Atom(name: '_UpdateMovieStore.directorTextController', context: context);

  @override
  TextEditingController get directorTextController {
    _$directorTextControllerAtom.reportRead();
    return super.directorTextController;
  }

  @override
  set directorTextController(TextEditingController value) {
    _$directorTextControllerAtom
        .reportWrite(value, super.directorTextController, () {
      super.directorTextController = value;
    });
  }

  late final _$summaryTextControllerAtom =
      Atom(name: '_UpdateMovieStore.summaryTextController', context: context);

  @override
  TextEditingController get summaryTextController {
    _$summaryTextControllerAtom.reportRead();
    return super.summaryTextController;
  }

  @override
  set summaryTextController(TextEditingController value) {
    _$summaryTextControllerAtom.reportWrite(value, super.summaryTextController,
        () {
      super.summaryTextController = value;
    });
  }

  late final _$selectedGenresAtom =
      Atom(name: '_UpdateMovieStore.selectedGenres', context: context);

  @override
  List<String> get selectedGenres {
    _$selectedGenresAtom.reportRead();
    return super.selectedGenres;
  }

  @override
  set selectedGenres(List<String> value) {
    _$selectedGenresAtom.reportWrite(value, super.selectedGenres, () {
      super.selectedGenres = value;
    });
  }

  late final _$_UpdateMovieStoreActionController =
      ActionController(name: '_UpdateMovieStore', context: context);

  @override
  void titleChanged(String title) {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.titleChanged');
    try {
      return super.titleChanged(title);
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void directorChanged(String director) {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.directorChanged');
    try {
      return super.directorChanged(director);
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void summaryChanged(String summary) {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.summaryChanged');
    try {
      return super.summaryChanged(summary);
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void genresChanged(String genre, bool selected) {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.genresChanged');
    try {
      return super.genresChanged(genre, selected);
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fethDataDetail(Movie? item) {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.fethDataDetail');
    try {
      return super.fethDataDetail(item);
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_UpdateMovieStoreActionController.startAction(
        name: '_UpdateMovieStore.dispose');
    try {
      return super.dispose();
    } finally {
      _$_UpdateMovieStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
movieForm: ${movieForm},
titleTextController: ${titleTextController},
directorTextController: ${directorTextController},
summaryTextController: ${summaryTextController},
selectedGenres: ${selectedGenres},
enableButton: ${enableButton}
    ''';
  }
}
