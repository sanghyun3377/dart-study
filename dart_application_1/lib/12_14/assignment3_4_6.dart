import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<Uint8List> downloadImage(String url) async {
  Uint8List data;
  try {
    var response = await http.get(Uri.parse(url));
    data = response.bodyBytes;
  } catch (e) {
    var file = File('lib/12_14/icon.ico');
    print('잘못된 요청입니다.');
    data = await file.readAsBytes();
  }
  return data;
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
  printDownloadInfo(downloadImage('https://alcon.ico'));
}
