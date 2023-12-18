import 'package:dart_application_1/12_18/assignment4.dart';
import 'package:test/test.dart';

void main() {
  test('문자열뒤집기를 반환해야한다', () {
    expect(reverseString('Hello'), 'olleH');
  });
}
