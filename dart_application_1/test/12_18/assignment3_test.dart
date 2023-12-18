import 'package:dart_application_1/12_18/assignment3.dart';
import 'package:test/test.dart';

void main() {
  test('리스트요소중 가장 큰 값을 찾아야 한다', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
}
