void main() {
  getData(int N, int M) {
    if (N % 2 == 1) return print('Yes');
    if (M % 2 == 1) return print('Yes');
    return print('No');
  }

  getData(30, 15);
  getData(12, 40);
}
