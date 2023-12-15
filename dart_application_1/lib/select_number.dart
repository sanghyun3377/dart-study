// 2번부터 39번까지 있다
// 5번과 10번 14번 19번 25번은 없다
// 총인원 33명
// 33명중 1명을 뽑을 수 있는데 각각 인원의 뽑힐 확률을 다르게 적용할 수 있다.
import 'dart:math';

int number2 = 100;
int number3 = 100;
int number4 = 100;
int number6 = 100;
int number7 = 100;
int number8 = 100;
int number9 = 100;
int number11 = 100;
int number12 = 100;
int number13 = 100;
int number15 = 100;
int number16 = 100;
int number17 = 100;
int number18 = 100;
int number20 = 100;
int number21 = 100;
int number22 = 100;
int number23 = 100;
int number24 = 100;
int number26 = 100;
int number27 = 100;
int number28 = 100;
int number29 = 100;
int number30 = 100;
int number31 = 100;
int number32 = 100;
int number33 = 100;
int number34 = 100;
int number35 = 100;
int number36 = 100;
int number37 = 100;
int number38 = 100;
int number39 = 100;

List students = [
  number2,
  number3,
  number4,
  number6,
  number7,
  number8,
  number9,
  number11,
  number12,
  number13,
  number15,
  number16,
  number17,
  number18,
  number20,
  number21,
  number22,
  number23,
  number24,
  number26,
  number27,
  number28,
  number29,
  number30,
  number31,
  number32,
  number33,
  number34,
  number35,
  number36,
  number37,
  number38,
  number39,
];
void main() {
  double addAllOdds = 0;
  for (int e in students) {
    addAllOdds += e;
    addAllOdds = addAllOdds / (students.length + 1);
  }
  print(addAllOdds);
}
