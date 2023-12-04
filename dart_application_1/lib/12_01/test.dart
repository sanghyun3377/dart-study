// ignore_for_file: public_member_api_docs, sort_constructors_first
class Human {
  String name = '상현';
  int age;
  Human(this.age, {this.name = '민수'});
}

void main() {
  Human(100);
}
