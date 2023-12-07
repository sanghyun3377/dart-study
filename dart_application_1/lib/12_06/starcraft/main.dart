import 'package:dart_application_1/12_06/starcraft/interface/army.dart';
import 'package:dart_application_1/12_06/starcraft/zerg/class/%08zerg_house.dart';
import 'terran/class/medic.dart';
import 'terran/class/marine.dart';

void main() {
  Medic medic = Medic();
  Marine marine = Marine();
  ZergHouse zergHouse = ZergHouse();

  @override
  String toString() {
    return 'Marine()';
  }

  medic.bionicHeal(marine);
  medic.bionicHeal(zergHouse);

  List<Army> armyList = [];

  void armyAdd(Army e) {
    if (armyList.length < 13) {
      armyList.add(e);
    } else {
      print('12마리 초과');
    }
  }

  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);
  armyAdd(marine);

  print(armyList);
}
