import 'package:dart_application_1/12_15/dto/results_dto.dart';
import 'package:dart_application_1/12_15/model/results.dart';

extension Toresults on ResultsDto {
  Results toResults() {
    return Results(
      genreIds: genreIds ?? [],
      adult: adult ?? false,
      backdropPath: backdropPath ?? '',
      id: id ?? 0,
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      overview: overview ?? '',
      popularity: popularity ?? 0,
      posterPath: posterPath ?? '',
      releaseDate: releaseDate ?? '',
      title: title ?? '',
      video: video ?? false,
      voteAverage: voteAverage ?? 0.0,
      voteCount: voteCount ?? 0,
    );
  }
}
