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
      print('HP ${maxHp - hp} 회복완료');
      hp = maxHp;
      print('mp 5 소모');
    }
  }

  int pray(int secound) {
    int pluseMp = secound + Random().nextInt(3);
    int totalMp = mp + pluseMp;
    if (totalMp > maxMp) {
      print('현재 MP가 최대치입니다');
      mp = maxMp;
    } else {
      print('MP $pluseMp 회복완료');
    }
    return pluseMp;
  }
}

void main() {
  Cleric cleric1 = Cleric(name: 'name', hp: 32, mp: 8);
  cleric1.selfAid();
  cleric1.pray(1);
}
