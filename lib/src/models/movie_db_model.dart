// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/foundation.dart';

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

  @override
  String toString() {
    return 'MovieDBModel(name: $name, description: $description, backdropPath: $backdropPath, page: $page, totalPages: $totalPages, totalResults: $totalResults, nameCreatedBy: $nameCreatedBy, gravatarHashCreatedBy: $gravatarHashCreatedBy, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovieDBModel &&
        other.name == name &&
        other.description == description &&
        other.backdropPath == backdropPath &&
        other.page == page &&
        other.totalPages == totalPages &&
        other.totalResults == totalResults &&
        other.nameCreatedBy == nameCreatedBy &&
        other.gravatarHashCreatedBy == gravatarHashCreatedBy &&
        listEquals(other.movies, movies);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        backdropPath.hashCode ^
        page.hashCode ^
        totalPages.hashCode ^
        totalResults.hashCode ^
        nameCreatedBy.hashCode ^
        gravatarHashCreatedBy.hashCode ^
        movies.hashCode;
  }

  MovieDBModel copyWith({
    String? name,
    String? description,
    String? backdropPath,
    int? page,
    int? totalPages,
    int? totalResults,
    String? nameCreatedBy,
    String? gravatarHashCreatedBy,
    List<MovieModel>? movies,
  }) {
    return MovieDBModel(
      name: name ?? this.name,
      description: description ?? this.description,
      backdropPath: backdropPath ?? this.backdropPath,
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
      nameCreatedBy: nameCreatedBy ?? this.nameCreatedBy,
      gravatarHashCreatedBy:
          gravatarHashCreatedBy ?? this.gravatarHashCreatedBy,
      movies: movies ?? this.movies,
    );
  }
}
