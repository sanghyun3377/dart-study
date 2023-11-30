//더 큰수 판별하기
void main() {
  getData(int A, int B) {
    if (A == B) {
      print('eq');
    } else if (A > B) {
      print('$A');
    } else {
      print('$B');
    }
  }

  getData(10, 20);
  getData(10, 10);
}
