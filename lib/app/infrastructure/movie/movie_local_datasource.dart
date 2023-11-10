import 'package:injectable/injectable.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
import 'package:movie_app/app/domain/utils/common_util.dart';

@injectable
class MovieLocalDataSource {
  Future<List<Movie>> getData() async {
    return [
      Movie(
        id: CommonUtils.generateRandomId(),
        title: 'Power Ranger',
        director: 'Dean Israelite',
        genres: ['Action', 'Sci-Fi'],
        summary: 'Popwer Ranger is...',
      ),
      Movie(
        id: CommonUtils.generateRandomId(),
        title: 'Frozen',
        director: 'Chris Buck',
        genres: ['Animation'],
        summary: 'Frozen is...',
      )
    ];
  }
}
