import 'package:get/get.dart';

class HomeuiController extends GetxController {
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
    print('brrbm');
  }

  void livingRoom() {
    print('livingroom');
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
  }

  void topRight() {
    print('topRight');
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
