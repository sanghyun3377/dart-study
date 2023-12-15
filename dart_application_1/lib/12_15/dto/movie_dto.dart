// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_application_1/12_15/dto/dates_dto.dart';
import 'package:dart_application_1/12_15/dto/results_dto.dart';

class MovieDto {
  Dates? dates;
  int? page;
  List<ResultsDto>? results;
  int? totalPages;
  int? totalResults;
  MovieDto({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      dates: json['dates'] != null
          ? Dates.fromJson(json['dates'] as Map<String, dynamic>)
          : null,
      page: json['page'] != null ? json['page'] as int : null,
      results: json['results'] != null
          ? List<ResultsDto>.from(
              (json['results'] as List<int>).map<ResultsDto?>(
                (x) => ResultsDto.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
      totalPages: json['totalPages'] != null ? json['totalPages'] as int : null,
      totalResults:
          json['totalResults'] != null ? json['totalResults'] as int : null,
    );
  }
}
