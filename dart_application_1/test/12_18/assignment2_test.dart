import 'package:dart_application_1/12_18/assignment2.dart';
import 'package:test/test.dart';

void main() {
  test('짝수이면 true 홀수이면 false를 반환해야한다', () {
    expect(isEven(4), true);
    expect(isEven(5), false);
  });

  test('짝수면 true', () {
    expect(isEven(2), true);
  });
}
