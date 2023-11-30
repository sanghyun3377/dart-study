void main() {
  machine(number) {
    String data = number.toString();
    bool jackPot = true;

    for (var i = 0; i < data.length; i++) {
      if (data[i] != data[0]) {
        jackPot = false;
        break;
      }
    }

    if (jackPot) {
      print(data);
    } else
      print('No');
  }

  machine(777);
  machine(725);
}
