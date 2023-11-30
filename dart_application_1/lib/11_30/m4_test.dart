void main() {
  getData(int x, int y) {
    int count = 0;

    for (int i = x; true; i += y) {
      count++;
      if (count <= 10) {
        print(i);
      } else {
        break;
      }
    }
  }

  getData(5, 10);
}
