// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode((mockData));
}

class MockData {
  String title;
  String director;
  int year;
  MockData({
    required this.title,
    required this.director,
    required this.year,
  });

  factory MockData.fromMap(Map<String, dynamic> map) {
    return MockData(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }

  factory MockData.fromJson(String source) =>
      MockData.fromMap(json.decode(source) as Map<String, dynamic>);
}

void main() {
  Future directorName() async {
    var res = await getMovieInfo();
    var data = MockData.fromJson(res);
    print(data.director);
  }

  directorName();
}
