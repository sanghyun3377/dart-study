class Person implements Comparable<Person> {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() => '$name ($age)';

  @override
  int compareTo(Person other) {
    final int nameEqual = name.compareTo(other.name);

    return nameEqual;
  }
}

void main() {
  List<Person> people = [
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 20),
  ];

  people.sort(); // 이름 오름차순 정렬
  print(people); // [Alice (25), Bob (30), Charlie (20)]
}
