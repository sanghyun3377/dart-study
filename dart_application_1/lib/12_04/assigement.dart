// ignore_for_file: public_member_api_docs, sort_constructors_first
class Wand {
  String name;
  double power;
  Wand({
    required this.name,
    required this.power,
  });
}

class Wizard {
  String name;
  int hp;
  Wand? wand;
  Wizard({
    required this.name,
    required this.hp,
    this.wand,
  });
}
