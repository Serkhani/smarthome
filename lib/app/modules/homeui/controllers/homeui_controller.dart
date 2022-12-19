import 'package:get/get.dart';
import 'package:smarthome/app/data/utils/room.dart';
import 'package:smarthome/app/data/utils/room_types.dart';
import 'package:smarthome/app/data/utils/sensor.dart';
import 'package:smarthome/app/data/utils/sensor_types.dart';
import 'package:smarthome/app/data/utils/smarthome.dart';
import 'package:smarthome/app/modules/homeui/widgets/room_dialog.dart';

class HomeuiController extends GetxController {
  final SmartHome smartHome = SmartHome(
    rooms: [
      Room(
        doorIsOpen: false.obs,
        lightIsOn: false.obs,
        type: Rooms.leftPorch,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 540.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 73.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: true.obs,
        lightIsOn: true.obs,
        type: Rooms.topLeft,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 600.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: true.obs,
        type: Rooms.topRight,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 240.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 47.6.obs),
          Sensor(type: SensorType.motionSensor, value: .0.obs),
        ],
      ),
      Room(
        doorIsOpen: true.obs,
        lightIsOn: false.obs,
        type: Rooms.livingRoom,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: .0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: false.obs,
        type: Rooms.rightPorch,
        isEmergency: true.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 26.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 32.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: false.obs,
        type: Rooms.master,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 50.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: true.obs,
        type: Rooms.masterBath,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: false.obs,
        type: Rooms.rbmaster,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 200.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 17.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
      Room(
        doorIsOpen: false.obs,
        lightIsOn: false.obs,
        type: Rooms.rbrbmaster,
        isEmergency: false.obs,
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 516.6.obs),
          Sensor(type: SensorType.temperatureSensor, value: 16.0.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ],
      ),
    ],
  );
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void brrbm() {
    Get.defaultDialog(
      title: 'RBMaster',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rbmaster),
      ),
    );
  }

  void livingRoom() {
    Get.defaultDialog(
      title: 'Living Room',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.livingRoom),
      ),
    );
  }

  void brrbmdoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.rbmaster);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void leftPorch() {
    Get.defaultDialog(
      title: 'Left Porch',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.leftPorch),
      ),
    );
  }

  void leftPorchdoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.leftPorch);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void masterBath() {
    Get.defaultDialog(
      title: 'Master Bath',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.masterBath),
      ),
    );
  }

  void masterBathDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.masterBath);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void masterRoom() {
    Get.defaultDialog(
      title: 'Master',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.master),
      ),
    );
  }

  void masterRoomDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.master);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void rbrbm() {
    Get.defaultDialog(
      title: 'RBRBMaster',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rbrbmaster),
      ),
    );
  }

  void rbrbmDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.rbrbmaster);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void rightPorch() {
    Get.defaultDialog(
      title: 'Right Porch',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rightPorch),
      ),
    );
  }

  void rightPorchDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.rightPorch);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void topLeftDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.topLeft);
        room!.toggleDoor();
        Get.back();
      },
    );
  }

  void topLeft() {
    Get.defaultDialog(
      title: 'Top Left',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.topLeft),
      ),
    );
  }

  void topRight() {
    Get.defaultDialog(
      title: 'Top Right',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.topRight),
      ),
    );
  }

  void topRightDoor() {
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onConfirm: () {
        var room = smartHome.findRoom(Rooms.rbmaster);
        room!.toggleDoor();
        Get.back();
      },
    );
  }
}
