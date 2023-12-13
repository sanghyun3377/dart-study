import 'dart:io';

final sample = File('lib/12_13/sample.csv');
final sampleCopy = File('lib/12_13/sample_copy.csv');

Future readSample() async {
  try {
    var data = await sample.readAsString();
    bool find = data.contains('한석봉');

    if (find) {
      var res = data.replaceAll('한석봉', '김석봉');
      await sampleCopy.writeAsString(res);
    }
  } catch (e) {
    print('에러발생 : $e');
  }
}

void main() {
  readSample();
}
