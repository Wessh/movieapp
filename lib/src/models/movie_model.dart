// ignore_for_file: public_member_api_docs, sort_constructors_first

class MovieModel {
  // Basic Info
  final int id;
  final bool adult;
  final String backdropPath;
  final String mediaType;
  final String originalLanguage;

  // Movie Info
  final String originalTitle;
  final String overview;
  final String title;
  final num popularity;
  final String releaseDate;
  final String posterPath;
  final num voteAverage;
  final int voteCount;

  MovieModel({
    required this.id,
    required this.adult,
    required this.backdropPath,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.title,
    required this.popularity,
    required this.releaseDate,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.fromJson(Map json) => MovieModel(
        id: json['id'],
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        mediaType: json['media_type'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        title: json['title'],
        popularity: json['popularity'],
        releaseDate: json['release_date'],
        posterPath: json['poster_path'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
