// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

class Cleric {
  static const int maxHP = 50;
  static const int maxMP = 10;

  String name;
  int hp;
  int mp;

//이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
//이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
//이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
//이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
//생성자는 가능한 한 중복되는 코드가 없도록 작성한다

  Cleric(this.name, {this.hp = Cleric.maxHP, this.mp = Cleric.maxMP});

  //마나 5를 소비해서 체력을 채우기
  selfAid() {
    if (mp >= 5) {
      mp - 5;
      print('HP ${maxHP - hp} 회복완료');
      hp = maxHP;
      print('mp 5 소모');
    }
  }

  // 기도해서 마나채우기
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
  Cleric cleric1 = Cleric("아서스", hp: 40, mp: 5);
  Cleric cleric2 = Cleric(
    "아서스",
    hp: 35,
  );
  Cleric cleric3 = Cleric(
    "아서스",
  );
}
