import 'dart:convert';

import 'package:dart_application_1/12_14/model/movie_info.dart';
import 'package:http/http.dart' as http;

Future<List<MovieInfo>> getMovieInfo() async {
  var url = Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  print(json);
  List<dynamic> movieInfo = json['results'];
  var data = movieInfo.map((e) => MovieInfo.fromJson(e)).toList();
  return data;
}

void main() async {
  var data = await getMovieInfo();
  print(data[0].id);
}
