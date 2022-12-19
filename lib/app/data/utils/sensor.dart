import 'package:get/get.dart';
import '../../../app/data/utils/sensor_types.dart';

class Sensor {
  final SensorType type;
  final RxDouble value;
  const Sensor({required this.type, required this.value});

  void update(){}
}
