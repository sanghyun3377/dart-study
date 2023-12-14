import 'dart:convert';

import 'package:dart_application_1/12_14/model/movie_more_info.dart';
import 'package:http/http.dart' as http;

Future<MovieMoreInfo> getMovieMoreInfo(int movieId) async {
  var url = Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  print(json);
  var data = MovieMoreInfo.fromJson(json);
  return data;
}

void main() {
  getMovieMoreInfo(901362);
}
