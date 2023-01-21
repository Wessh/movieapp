// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:movieapp/src/models/movie_model.dart';

class MovieDBModel {
  // Sys
  final String name;
  final String description;
  final String backdropPath;
  final int page;
  final int totalPages;
  final int totalResults;

  // created_by
  final String nameCreatedBy;
  final String gravatarHashCreatedBy;

  // Movies
  final List<MovieModel> movies;

  MovieDBModel({
    required this.name,
    required this.description,
    required this.backdropPath,
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.nameCreatedBy,
    required this.gravatarHashCreatedBy,
    required this.movies,
  });

  factory MovieDBModel.fromJson(Map json) => MovieDBModel(
        name: json['name'],
        description: json['description'],
        backdropPath: json['backdrop_path'],
        page: json['page'],
        totalPages: json['total_pages'],
        totalResults: json['total_results'],
        nameCreatedBy: json['created_by']['name'],
        gravatarHashCreatedBy: json['created_by']['gravatar_hash'],
        movies: json['results']
            .map((x) => MovieModel.fromJson(x))
            .toList()
            .cast<MovieModel>(),
      );
}
