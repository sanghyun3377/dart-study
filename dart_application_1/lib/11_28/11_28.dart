class Calculator {
// 덧셈 함수
  int add(int x, int y) {
    return x + y;
  }

// 뺄셈 함수
  int subtraction(int x, int y) {
    return x - y;
  }

// 곱셈 함수
  int multiplication(int x, int y) {
    return x * y;
  }

// 나눗셈 함수
  double division(int x, int y) {
    return x / y;
  }
}

void main() {
  print('더하기 = ${Calculator().add(10, 5)}');
  print('빼기 = ${Calculator().subtraction(10, 5)}');
  print('곱하기 = ${Calculator().multiplication(10, 5)}');
  print('나누기 = ${Calculator().division(10, 5)}');
}
