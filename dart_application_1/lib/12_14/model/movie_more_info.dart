// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieMoreInfo {
  bool adult;
  String backdropPath;
  Map belongsToCollection;
  int budget;
  List<dynamic> genres;
  String? homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<dynamic> productionCompanies;
  List<dynamic> productionCountries;
  String releaseDate;
  int revenue;
  int runtime;
  List<dynamic> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  MovieMoreInfo({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieMoreInfo.fromJson(Map<String, dynamic> json) {
    return MovieMoreInfo(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      belongsToCollection: json['belongs_to_collection'] as Map,
      budget: json['budget'] as int,
      genres: json['genres'] as List<dynamic>,
      homepage: json['homepage'] != null ? json['homepage'] as String : null,
      id: json['id'] as int,
      imdbId: json['imdb_id'] as String,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as double,
      posterPath: json['poster_path'] as String,
      productionCompanies: json['production_companies'] as List<dynamic>,
      productionCountries: json['production_countries'] as List<dynamic>,
      releaseDate: json['release_date'] as String,
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int,
      spokenLanguages: json['spoken_languages'] as List<dynamic>,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }
}
