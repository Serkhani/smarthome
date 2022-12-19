import 'package:get/get.dart';
import '../../../app/data/utils/room_types.dart';
import '../../../app/data/utils/sensor.dart';
import '../../../app/data/utils/sensor_types.dart';

class Room {
  final Rooms type;
  // final RxDouble currentTemp;
  final RxBool lightIsOn;
  final RxBool doorIsOpen;
  final RxBool isEmergency;
  final List<Sensor> sensors;

  const Room({
    required this.doorIsOpen,
    // required this.currentTemp,
    required this.lightIsOn,
    required this.type,
    required this.isEmergency,
    required this.sensors,
  });

  Sensor? findSensor(SensorType type) {
    for (var sensor in sensors) {
      if (sensor.type == type) {
        return sensor;
      }
    }
    return null;
  }

  void addSensor(Sensor sensor) {
    sensors.add(sensor);
  }

  void onEmergency() {
    isEmergency.value = true;
  }

  void emergencyOff() {
    isEmergency.value = false;
  }

  void toggleLight() {
    lightIsOn.value = !lightIsOn.value;
  }

  void toggleDoor() {
    doorIsOpen.value = !doorIsOpen.value;
  }
}
