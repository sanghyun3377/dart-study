import 'dart:io';

copy(String source, String target) {
  File(target).writeAsStringSync(File(source).readAsStringSync());
}

void main() {
  // 원본 파일 생성
  final file = File('lib/12_11/file.txt');
  file.writeAsStringSync('Hi\n dd');
  file.writeAsStringSync(mode: FileMode.append, 'ss'); //파일에 'ss' 추가
  print(file.readAsStringSync());

  // 파일 복사
  copy('lib/12_11/file.txt', 'lib/12_11/copyfile.txt');

  print(File('lib/12_11/copyfile.txt').readAsStringSync());
}
