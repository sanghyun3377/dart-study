void main() {
  List<Person> personList = [];
  var hong = Person(name: '홍길동', age: 20);
  var han = Person(name: '한석봉', age: 25);

  personList.add(hong);
  personList.add(han);

  print(personList[0].name);
}

class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });
}
