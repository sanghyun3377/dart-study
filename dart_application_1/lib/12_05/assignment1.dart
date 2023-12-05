// 독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
// PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
// PoisonSlime poisonSlime = PoisonSlime(‘A’);
// PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
// PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
// 우선, “보통 슬라임과 같은 공격"을 한다
// “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
// 화면에 “추가로, 독 포자를 살포했다!” 를 표시
// 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
// “독 공격의 남은 횟수" 를 1 감소 시킨다

class Hero {
  int hp;

  Hero({required this.hp});
}

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix 이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int _poisonAttack = 5;

  get poisonAttack => _poisonAttack;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    print('슬라임$suffix 이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
    if (poisonAttack > 0) {
      print("추가로, 독 포자를 살포했다!");
      _poisonAttack -= 1;
      var poisonDemage = (hero.hp / 5);
      hero.hp -= poisonDemage.toInt();
      print('$poisonDemage포인트의 데미지');
    }
  }
}

void main() {
  Hero hero = Hero(hp: 100);
  PoisonSlime poisonSlime = PoisonSlime('A');

  poisonSlime.attack(hero);
  print("포이즌슬라임의 남은 독공격 횟수 : ${poisonSlime.poisonAttack}");
  print('히어로의 남은 체력 : ${hero.hp}');
}
