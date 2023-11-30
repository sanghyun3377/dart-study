void main() {
  List<int> card = [1, 2, 3, 4, 5];
  List<int> myCard = [1, 3, 2, 5];

  for (int number in card) {
    if (!myCard.contains(number)) {
      print('$number');
    }
  }
}
