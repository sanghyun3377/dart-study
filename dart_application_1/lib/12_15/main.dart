import 'package:dart_application_1/12_15/dart_source/movie_api.dart';

void main() async {
  final api = MovieApi();
  final dto = await api.getResults();
  print(dto[0].title);
}
