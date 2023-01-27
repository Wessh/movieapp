import 'package:flutter/cupertino.dart';
import 'package:movieapp/src/models/movie_db_model.dart';
import 'package:movieapp/src/repositories/movies_repository.dart';

import '../models/movie_model.dart';

class MovieController {
  final MoviesRepository _moviesRepository;

  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<MovieDBModel?> movies = ValueNotifier<MovieDBModel?>(null);
  MovieDBModel? _cachedMovies;

  onChanged(String value) {
    List<MovieModel> list = _cachedMovies!.movies
        .where((e) => e.title.toLowerCase().contains(value.toLowerCase()))
        .toList();
    movies.value = movies.value!.copyWith(movies: list);
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }
}
