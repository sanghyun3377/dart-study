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

printDownloadInfo(Future<Uint8List> function) async {
  print('다운로드 시작');
  var stopWatch = Stopwatch()..start();
  Uint8List downloadFile = await function;
  stopWatch.stop();
  print('다운로드 끝');
  print('=========');
  print('소요시간 : ${stopWatch.elapsed}');
  saveFile(downloadFile, 'icon.ico');
  print('용량 : ${downloadFile.lengthInBytes}bytes');
}

void main() async {
  var stopWatch = Stopwatch()..start();
  await downloadImage('https://alimipro.com/favicon.ico');
  await downloadImage(
      'https://images.unsplash.com/photo-1702325250074-28bc0f34646e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  await downloadImage(
      'https://images.unsplash.com/photo-1695653422536-d1e9d449ce7b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  stopWatch.stop();
  print('순차적으로 다운받는 시간 : ${stopWatch.elapsed}');

  var stopWatch2 = Stopwatch()..start();
  downloadImage('https://alimipro.com/favicon.ico');
  downloadImage(
      'https://images.unsplash.com/photo-1702325250074-28bc0f34646e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  downloadImage(
      'https://images.unsplash.com/photo-1695653422536-d1e9d449ce7b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  stopWatch2.stop();
  print('동시에 다운받는 시간 : ${stopWatch2.elapsed}');
}
