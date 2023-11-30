void main() {
  List<int> typhoon = [5, 8, 19, 25, 31];
  for (var i = 0; i < typhoon.length - 1; i++) {
    print(typhoon[i + 1] - typhoon[i]);
  }
}
