import 'dart:convert';

import 'package:dart_application_1/12_15/dto/results_dto.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  Future<List<ResultsDto>> getResults() async {
    var url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1');
    var response = await http.get(url);
    var responseBody = response.body;
    var map = jsonDecode(responseBody);
    var resultsData = map["results"] as List<dynamic>;
    var data = resultsData.map((e) => ResultsDto.fromJson(e)).toList();
    return data;
  }
}
