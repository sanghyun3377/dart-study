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

List<Map<String, int>> students = [
  {' number2': 100},
  {' number3': 100},
  {' number4': 100},
  {' number6': 100},
  {' number7': 100},
  {' number8': 100},
  {' number9': 100},
  {'number11': 100},
  {'number12': 100},
  {'number13': 100},
  {'number15': 100},
  {'number16': 100},
  {'number17': 100},
  {'number18': 100},
  {'number20': 100},
  {'number21': 100},
  {'number22': 100},
  {'number23': 100},
  {'number24': 100},
  {'number26': 100},
  {'number27': 100},
  {'number28': 100},
  {'number29': 100},
  {'number30': 100},
  {'number31': 100},
  {'number32': 100},
  {'number33': 100},
  {'number34': 100},
  {'number35': 100},
  {'number36': 100},
  {'number37': 100},
  {'number38': 100},
  {'number39': 100},
];

void main() {
  print(students);
  var randomNumber = Random().nextInt(100);
  double addAllOdds = 0;
  double probability1Point = 0;

  // for (int e in students[]) {
  //   addAllOdds += e;
  // }
  // probability1Point = 100 / addAllOdds;
  // for (int e in students) {
  //   if (randomNumber < e * probability1Point) {
  //     print(e);
  //   }
  // }

  print(addAllOdds);
}
