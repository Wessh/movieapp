import 'package:movieapp/src/models/movie_db_model.dart';

abstract class MoviesRepository {
  Future<MovieDBModel> getMovies();
}
