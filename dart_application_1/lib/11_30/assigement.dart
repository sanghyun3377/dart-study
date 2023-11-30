// ignore_for_file: public_member_api_docs, sort_constructors_first

class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  Cleric({
    required this.name,
    required this.hp,
    required this.mp,
  });

  selfAid() {
    if (mp >= 5) {
      mp - 5;
      hp = maxHp;
      print('mp 5 소모');
      print('HP + ${maxHp - hp}');
    }
  }
}

void main() {}
