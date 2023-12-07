import 'package:dart_application_1/12_06/starcraft/interface/bionic.dart';
import 'package:dart_application_1/12_06/starcraft/terran/class/scv.dart';
import 'package:dart_application_1/12_06/starcraft/terran/terran_unit.dart';
import 'package:dart_application_1/12_06/starcraft/zerg/zerg_building.dart';

class Medic extends TerranUnit implements Bionic {
  bionicHeal(Bionic bionic) {
    if (bionic is ZergBuilding) {
      print('건물은 치료불가');
    } else {
      print('$bionic 치료완료');
    }
  }

  scvHeal(SCV scv) {
    //SCV 치료
  }
}
