import 'package:flutter/cupertino.dart';
import 'package:movieapp/src/models/movie_db_model.dart';
import 'package:movieapp/src/repositories/movies_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;

  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<MovieDBModel?> movies = ValueNotifier<MovieDBModel?>(null);

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}
