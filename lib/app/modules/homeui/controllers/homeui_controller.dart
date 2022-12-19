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
        index: 0),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.topLeft,
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 1),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.topRight, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 2),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.livingRoom, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 3),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.rightPorch, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 4),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.master, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 5),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.masterBath, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 6),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.rbmaster, 
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 7),
        Room(
        doorIsOpen: false.obs, 
        lightIsOn: false.obs, 
        type: Rooms.rbrbmaster,
        isEmergency: false.obs, 
        sensors: [
          Sensor(type: SensorType.gasSensor, value: 500.0.obs),
          Sensor(type: SensorType.temperatureSensor, value: 37.6.obs),
          Sensor(type: SensorType.motionSensor, value: 1.0.obs),
        ], 
        index: 8)
    ]
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
    print('rbmaster');
    Get.defaultDialog(
      title: 'RBMaster',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rbmaster),
      ),
    );
  }

  void livingRoom() {
    print('livingroom');
    Get.defaultDialog(
      title: 'Living Room',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.livingRoom),
      ),
    );
  }

  void brrbmdoor() {
    print('brrbmdoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void leftPorch() {
    print('leftPorch');
    Get.defaultDialog(
      title: 'Left Porch',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.leftPorch),
      ),
    );
  }

  void leftPorchdoor() {
    print('leftPorchdoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void masterBath() {
    print('masterBath');
    Get.defaultDialog(
      title: 'Master Bath',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.masterBath),
      ),
    );
  }

  void masterBathDoor() {
    print('masterBathDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void masterRoom() {
    print('masterRoom');
    Get.defaultDialog(
      title: 'Master',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.master),
      ),
    );
  }

  void masterRoomDoor() {
    print('masterRoomDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void rbrbm() {
    print('rbrbm');
    Get.defaultDialog(
      title: 'RBRBMaster',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rbrbmaster),
      ),
    );
  }

  void rbrbmDoor() {
    print('rbrbmDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void rightPorch() {
    print('rightPorch');
    Get.defaultDialog(
      title: 'Right Porch',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.rightPorch),
      ),
    );
  }

  void rightPorchDoor() {
    print('rightPorchDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void topLeftDoor() {
    print('topLeftDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }

  void topLeft() {
    print('topLeft');
    Get.defaultDialog(
      title: 'Top Left',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.topLeft),
      ),
    );
  }

  void topRight() {
    print('topRight');
    Get.defaultDialog(
      title: 'Top Right',
      content: RoomDialog(
        room: smartHome.findRoom(Rooms.topRight),
      ),
    );
  }

  void topRightDoor() {
    print('topRightDoor');
    Get.defaultDialog(
      radius: 12,
      textCancel: 'No',
      textConfirm: 'Yes',
      title: 'Toggle Door?',
      middleText: 'Door will open if closed and vice versa',
      onCancel: () => print('No'),
      onConfirm: () {
        print('yes');
        Get.back();
      },
    );
  }
}
