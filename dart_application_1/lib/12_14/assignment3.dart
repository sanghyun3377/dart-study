import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<Uint8List> downloadImage(String url) async {
  var response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  var file = File('lib/12_14/$fileName');
  return file.writeAsBytes(bytes);
}

void main() async {
  var alimiproImage = await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(alimiproImage, 'icon.ico');
}
