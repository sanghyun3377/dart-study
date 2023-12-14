import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:developer';

Future<Uint8List> downloadImage(String url) async {
  var response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  var file = File('lib/12_14/$fileName');
  return file.writeAsBytes(bytes);
}

void main() async {
  print('다운로드 시작');
  var stopWatch = Stopwatch()..start();
  var alimiproImage = await downloadImage('https://alimipro.com/favicon.ico');
  stopWatch.stop();
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopWatch.elapsed}');
  saveFile(alimiproImage, 'icon.ico');
  print('용량 : ${alimiproImage.lengthInBytes}bytes');
}
