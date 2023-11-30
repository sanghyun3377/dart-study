// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

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

  int pray(int secound) {
    int pluseMp = secound + Random().nextInt(3);
    int addMp = mp + pluseMp;
    if (addMp > maxMp) {
      print('현재 MP가 최대치입니다');
      return mp = maxMp;
    }
    print('$pluseMp 회복완료');
    return addMp;
  }
}

void main() {
  Cleric cleric = Cleric(name: 'name', hp: 49, mp: 5);
  cleric.pray(1);
}
