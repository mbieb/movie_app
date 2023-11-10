import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/app/domain/failures/failures.dart';
import 'package:movie_app/app/domain/movie/i_movie_repository.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
import 'package:movie_app/app/domain/movie/movie_form.dart/move_form.dart';
import 'package:movie_app/app/domain/movie/movie_success/movie_success.dart';
import 'package:movie_app/app/domain/utils/common_util.dart';

part 'movie_store.g.dart';

@injectable
class MovieStore = _MovieStore with _$MovieStore;

abstract class _MovieStore with Store {
  final IMovieRepository _movieRepository;
  _MovieStore(this._movieRepository);
  @observable
  bool isLoading = false;

  @observable
  Option<Either<AppFailure, MovieSuccess>> failureOrSuccessOption = none();

  @observable
  Option<List<Movie>> movieListOption = none();

  @observable
  String searchQuery = '';

  @computed
  List<Movie> get movieList => movieListOption.fold(
        () => [],
        (val) => val,
      );

  @computed
  List<Movie> get filteredMovies {
    return movieList
        .where((movie) => (movie.title ?? '')
            .toLowerCase()
            .contains(searchQuery.toLowerCase()))
        .toList();
  }

  @action
  Future<void> fetchMovies() async {
    final failureOrMovieList = await _movieRepository.getData();
    failureOrMovieList.fold(
      (l) {
        failureOrSuccessOption = some(left(l));
      },
      (success) {
        movieListOption = some(success.data);
      },
    );
  }

  @action
  void setSearchQuery(String query) {
    searchQuery = query;
  }

  @action
  void addMovie(MovieForm form) {
    Movie movie = Movie(
      id: CommonUtils.generateRandomId(),
      title: form.title.toNullable(),
      director: form.director.toNullable(),
      summary: form.summary.toNullable(),
      genres: form.genres.toNullable(),
    );
    movieListOption = some([...movieList, movie]);
  }
}
