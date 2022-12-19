import 'package:get/get.dart';
import 'package:smarthome/app/data/utils/sensor.dart';

class Room {
  final String name;
  final int index;
  final RxBool lightIsOn;
  final RxBool doorIsOpen;
  final RxBool isEmergency;
  final List<Sensor> sensors;

  const Room(
      {required this.doorIsOpen,
      required this.lightIsOn,
      required this.name,
      required this.isEmergency,
      required this.sensors,
      required this.index});

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
