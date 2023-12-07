import 'package:dart_application_1/12_06/starcraft/interface/army.dart';
import 'package:dart_application_1/12_06/starcraft/prottos/prottos.dart';

abstract class ProttosUnit extends Prottos implements Army {
  ProttosUnit({required super.shield});
}
