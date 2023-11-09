import 'package:injectable/injectable.dart';
import 'package:movie_app/app/domain/movie/movie.dart';

@injectable
class MovieLocalDataSource {
  Future<List<Movie>> getData() async {
    return [
      const Movie(
        id: '1',
        title: 'Power Ranger',
        director: 'Dean Israelite',
        genres: ['Action', 'Sci-Fi'],
        summary: 'Popwer Ranger is...',
      ),
      const Movie(
        id: '2',
        title: 'Frozen',
        director: 'Chris Buck',
        genres: ['Animation'],
        summary: 'Frozen is...',
      )
    ];
  }
}
