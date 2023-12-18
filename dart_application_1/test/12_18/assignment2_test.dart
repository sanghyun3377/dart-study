import 'package:dart_application_1/12_18/assignment2.dart';
import 'package:test/test.dart';

void main() {
  test('함수가 잘 작동해야한다', () {
    expect(isEven(4), true);
    expect(isEven(5), false);
  });
}
