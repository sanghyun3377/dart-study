// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  final int maxHP = 50;
  int mp = 10;
  final int maxMP = 10;

  Cleric({
    required this.name,
    required this.hp,
    required this.mp,
  });

  selfAid() {
    if (mp >= 5) {
      mp - 5;
      print('HP ${maxHP - hp} 회복완료');
      hp = maxHP;
      print('mp 5 소모');
    }
  }

  // int pray(int secound) {
  //   int pluseMp = secound + Random().nextInt(3);
  //   int totalMp = mp + pluseMp;
  //   if (totalMp > maxMp) {
  //     print('현재 MP가 최대치입니다');
  //     mp = maxMp;
  //   } else {
  //     print('MP $pluseMp 회복완료');
  //   }
  //   return pluseMp;
  // }

  int pray(int secound) {
    int bonuce = Random().nextInt(3);
    int pluseMP = secound + bonuce;
    int myMp = mp;

    if ((mp + pluseMP) <= maxMP) {
      mp = mp + pluseMP;
    } else if ((mp + pluseMP) > maxMP) {
      mp = maxMP;
    }
    print('MP ${mp - myMp} 회복완료');
    return mp - myMp;
  }
}

void main() {
  Cleric cleric1 = Cleric(name: 'name', hp: 32, mp: 8);
  cleric1.selfAid();
  cleric1.pray(1);
}
