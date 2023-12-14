// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieInfo {
  bool? adult;
  String? backdropPath;
  List<dynamic> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String? overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  MovieInfo({
    this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) {
    return MovieInfo(
      adult: json['adult'] != null ? json['adult'] as bool : null,
      backdropPath: json['backdrop_path'] != null
          ? json['backdrop_path'] as String
          : null,
      genreIds: json['genre_ids'] as List<dynamic>,
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] != null ? json['overview'] as String : null,
      popularity: json['popularity'] as double,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }
}
