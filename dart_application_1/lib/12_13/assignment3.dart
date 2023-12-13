import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  try {
    await timeoutFuture().timeout(Duration(seconds: 5));
  } on TimeoutException catch (e) {
    print('시간초과에러 : $e');
  }
}
