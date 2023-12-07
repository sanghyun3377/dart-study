import 'package:dart_application_1/12_06/starcraft/interface/army.dart';
import 'package:dart_application_1/12_06/starcraft/interface/bionic.dart';
import 'package:dart_application_1/12_06/starcraft/zerg/zerg.dart';

abstract class ZergUnit extends Zerg implements Bionic, Army {}
