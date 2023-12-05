// ignore_for_file: public_member_api_docs, sort_constructors_first
// 연습문제 12-1
// 어떤 회사에서 자산관리 프로그램을 만들려고 한다. 현시점에서 컴퓨터, 책 을 표현하는, 다음과 같은 두개의 클래스가 있다
// 이후, 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오. 또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.

// 연습문제 12-2
// 다음의 상속도의 가, 나, 다 부분의 클래스명을 생각 해 보시오.
// 가 : Asset
// 나 : IntangibleAsset
// 다 : Patent

// 연습문제 12-3
// 자산인지 아닌지 따지지 말고, 형태가 있는 것 (Thing) 이면, 무게가 있다
// 그래서, double 형으로 무게(weight)를 얻을 수 있도록 getter/setter를 가지는 인터페이스 Thing 을 만드시오

// 인터페이스
abstract interface class Thing {
  double get weight;

  set setWeight(double weight);
}

//자산 추상클래스
abstract class Asset {
  String name;

  Asset({required this.name});
}

//유형자산 추상클래스
abstract class TangibleAsset extends Asset {
  int price;
  String color;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
  });
}

class Book extends TangibleAsset {
  String isbn;
  Book({
    required this.isbn,
    required super.name,
    required super.price,
    required super.color,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required this.makerName,
    required super.color,
    required super.name,
    required super.price,
  });
}
