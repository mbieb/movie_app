import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
import 'package:movie_app/app/domain/movie/movie_form.dart/move_form.dart';

part 'update_movie_store.g.dart';

@injectable
class UpdateMovieStore = _UpdateMovieStore with _$UpdateMovieStore;

abstract class _UpdateMovieStore with Store {
  _UpdateMovieStore();

  @observable
  bool isLoading = false;

  @observable
  MovieForm movieForm = MovieForm.init();

  @observable
  TextEditingController titleTextController = TextEditingController();

  @observable
  TextEditingController directorTextController = TextEditingController();

  @observable
  TextEditingController summaryTextController = TextEditingController();

  @observable
  List<String> selectedGenres = ObservableList<String>();

  @computed
  bool get enableButton => movieForm.isValid;

  @action
  void titleChanged(String title) {
    movieForm = movieForm.copyWith(title: some(title));
    titleTextController.text = title;
  }

  @action
  void directorChanged(String director) {
    movieForm = movieForm.copyWith(director: some(director));
    directorTextController.text = director;
  }

  @action
  void summaryChanged(String summary) {
    movieForm = movieForm.copyWith(summary: some(summary));
    summaryTextController.text = summary;
  }

  @action
  void genresChanged(String genre, bool selected) {
    if (selected) {
      selectedGenres.add(genre);
    } else {
      selectedGenres.remove(genre);
    }

    movieForm = movieForm.copyWith(genres: some(selectedGenres));
  }

  @action
  void fethDataDetail(Movie? item) {
    titleTextController.text = item?.title ?? '';
    summaryTextController.text = item?.summary ?? '';
    directorTextController.text = item?.director ?? '';
    selectedGenres.addAll(item?.genres ?? []);

    movieForm = MovieForm(
      id: optionOf(item?.id),
      title: optionOf(item?.title),
      director: optionOf(item?.director),
      summary: optionOf(item?.summary),
      genres: optionOf(item?.genres),
    );
  }
}
