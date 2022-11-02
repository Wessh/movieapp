class Movies {
  late final double averageRating;
  late final String backdropPath;
  late final Map<String, String> comments;
  late final CreatedBy createdBy;
  late final String description;
  late final int id;
  late final String iso31661;
  late final String iso6391;
  late final String name;
  late final Map<String, String> objectIds;
  late final int page;
  late final String posterPath;
  late final bool public;
  late final List<Movie> listMovies;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  Movies({
    required this.averageRating,
    required this.backdropPath,
    required this.comments,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.iso31661,
    required this.iso6391,
    required this.name,
    required this.objectIds,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.listMovies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });

  Movies.fromJap(Map<String, dynamic> json) {
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    comments = json['comments'];
    createdBy = CreatedBy.fromJson(json['created_by']);
    description = json['description'];
    id = json['id'];
    iso31661 = json['iso31661'];
    iso6391 = json['iso6391'];
    name = json['name'];
    objectIds = json['object_ids'];
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['average_rating'] = averageRating;
    data['backdrop_path'] = backdropPath;
    data['comments'] = comments;
    data['created_by'] = createdBy.toJson();
    data['description'] = description;
    data['id'] = id;
    data['iso31661'] = iso31661;
    data['iso6391'] = iso6391;
    data['name'] = name;
    data['object_ids'] = objectIds;
    data['page'] = page;
    data['poster_path'] = posterPath;
    data['public'] = public;
    data['results'] = listMovies.map((e) => e.toJson()).toList();
    data['revenue'] = revenue;
    data['runtime'] = runtime;
    data['sort_by'] = sortBy;
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }

  /* factory Movies.fromMap(Map<String, dynamic> json) {
    return Movies(
      averageRating: json['average_rating'],
      backdropPath: json['backdrop_path'],
      comments: json['comments'],
      createdBy: CreatedBy.fromJson(json['created_by']),
      description: json['description'],
      id: json['id'],
      iso31661: json['iso31661'],
      iso6391: json['iso6391'],
      name: json['name'],
      objectIds: json['object_ids'],
      page: json['page'],
      posterPath: json['poster_path'],
      public: json['public'],
      listMovie: json['results'],
      revenue: json['revenue'],
      runtime: json['runtime'],
      sortBy: json['sort_by'],
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'average_rating': averageRating,
      'backdrop_path': backdropPath,
      'comments': comments,
      'created_by': createdBy.toJson(),
      'description': description,
      'id': id,
      'iso31661': iso31661,
      'iso6391': iso6391,
      'name': name,
      'object_ids': objectIds,
      'page': page,
      'poster_path': posterPath,
      'public': public,
      'results': listMovie.map((e) => e.toJson()).toList(),
      'revenue': revenue,
      'runtime': runtime,
      'sort_by': sortBy,
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  } */
}

class CreatedBy {
  late final String gravatarHash;
  late final String id;
  late final String name;
  late final String username;

  CreatedBy({
    required this.gravatarHash,
    required this.id,
    required this.name,
    required this.username,
  });

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['gravatar_hash'] = gravatarHash;
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    return data;
  }

  /* factory CreatedBy.fromJson(Map<String, dynamic> json) {
    return CreatedBy(
      gravatarHash: json['gravatar_hash'],
      id: json['id'],
      name: json['name'],
      username: json['username'],
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'gravatar_hash': gravatarHash,
      'id': id,
      'name': name,
      'username': username,
    };
  } */
}

class Movie {
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final DateTime releaseDate;
  late final String title;
  late final bool video;
  late final double voteAverage;
  late final int voteCount;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['media_type'] = mediaType;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }

  /* Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'genreIds': genreIds,
      'id': id,
      'mediaType': mediaType,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'releaseDate': releaseDate,
      'title': title,
      'video': video,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
    };
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: List.castFrom<dynamic, int>(json['genreIds']),
      id: json['id'],
      mediaType: json['mediaType'],
      originalLanguage: json['originalLanguage'],
      originalTitle: json['originalTitle'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['releaseDate'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['voteAverage'],
      voteCount: json['voteCount'],
    );
  } */
}
