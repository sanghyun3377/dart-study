// X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오

// Y y1 = A();
// Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
// y1.a();
// y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  void c() {
    print('Ac');
  }

  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }
}

class B extends Y {
  void c() {
    print('Bc');
  }

  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }
}

void main() {
  X obj = A();
  obj.a();

  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();
}
