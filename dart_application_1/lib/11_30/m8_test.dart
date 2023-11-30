void main() {
  List<int> day1 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  List<int> day2 = [1, 1, 1, 1, 1];

  party(party) {
    if (party.length == 11) {
      print('OK');
    } else if (party.length < 11) {
      print(11 - party.length);
    }
  }

  party(day1);
  party(day2);
}
