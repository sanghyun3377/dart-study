// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sword {
  String name;
  int damage;
  Sword({
    required this.name,
    required this.damage,
  });
}

class Hero {
  String name;
  int hp;
  Sword? sword;
  Hero({
    required this.name,
    required this.hp,
  });
}
void main(){
 var hero = Hero;
 hero
}