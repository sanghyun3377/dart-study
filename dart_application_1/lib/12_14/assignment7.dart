import 'dart:convert';

import 'package:dart_application_1/12_14/model/stores.dart';
import 'package:http/http.dart' as http;

Future<List<Stores>> getStores() async {
  var url = Uri.parse('http://104.198.248.76:3000/mask');
  var response = await http.get(url);
  var responseBytes = utf8.decode(response.bodyBytes);
  var json = jsonDecode(responseBytes);
  List<dynamic> stores = json['stores'];
  var data = stores.map((e) => Stores.fromJson(e)).toList();
  return data;
}

void main() async {
  var stores = await getStores();
  print(stores.runtimeType);
}
