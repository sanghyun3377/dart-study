//10-1 다음 2개의 클래스 “Wizard (마법사)”, “Wand (지팡이)” 를 작성하시오. 마법사는 지팡이를 들 수 있습니다.

// 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
// 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
// 마법사의 지팡이는 null 일 수 없다.
// 마법사의 MP는 0 이상이어야 한다.
// HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  }) {
    if (name.length < 3) {
      throw Exception("Wand의 이름이 3글자 미만입니다");
    }
    if (power < 0.5 || power > 100) {
      throw Exception("지팡이의 마력 범위에러");
    }
  }
}

class Wizard {
  String name;
  int hp;
  int mp;
  Wand wand;
  Wizard({
    required this.name,
    required this.hp,
    required this.mp,
    required this.wand,
  }) {
    if (name.length < 3) {
      throw Exception("Wizard의 이름이 3글자 미만입니다");
    }
    if (mp < 0) {
      throw Exception("마나는 0이상이어야 합니다");
    }
    if (hp < 0) {
      hp = 0;
    }
  }
}

void main() {}
