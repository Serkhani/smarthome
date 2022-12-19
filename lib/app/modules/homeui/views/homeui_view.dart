import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smarthome/app/data/utils/room_types.dart';

import '../../../../app/modules/homeui/widgets/clipped_widgets.dart';
import '../../../data/clipper/leftporch_clipper.dart';
import '../../../data/clipper/leftporchdoor_clipper.dart';
import '../../../data/clipper/livingroom_clipper.dart';
import '../../../data/clipper/masterbath_clipper.dart';
import '../../../data/clipper/masterbathdoor_clipper.dart';
import '../../../data/clipper/masterroom_clipper.dart';
import '../../../data/clipper/masterroomdoor_clipper.dart';
import '../../../data/clipper/rbrbmasterdoor_clipper.dart';
import '../../../data/clipper/rightporch_clipper.dart';
import '../../../data/clipper/rightporchdoor_clipper.dart';
import '../../../data/clipper/roombyroombymaster_clipper.dart';
import '../../../data/clipper/topleftdoor_clipper.dart';
import '../../../data/clipper/topleftroom_clipper.dart';
import '../../../data/clipper/toprightdoor_clipper.dart';
import '../../../data/clipper/toprightroom_clipper.dart';
import '../../../data/clipper/brroombmasterdoor_clipper.dart';
import '../../../data/clipper/botttomrightroombmaster_clipper.dart';
import '../../../data/painter/startuppainter.dart';
import '../controllers/homeui_controller.dart';

class HomeuiView extends GetView<HomeuiController> {
  const HomeuiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        maxScale: 5.0,
        child: Obx(
          () => Container(
            alignment: Alignment.centerLeft,
            constraints: const BoxConstraints.expand(),
            child: Stack(
              children: [
                CustomPaint(
                  size: const Size(240.0, 360.0),
                  painter: StartUpPainter(
                      outerprogress: 1.0,
                      roomsprogress: 1.0,
                      color: Colors.black),
                ),
                Clip(
                  clipper: BottomRightRBMasterClipper(),
                  onPressed: () => controller.brrbm(),
                  color: controller.smartHome
                          .findRoom(Rooms.rbmaster)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.rbmaster)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: BRRoomBMasterDoorClipper(),
                  onPressed: () => controller.brrbmdoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.rbmaster)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: LeftPorchClipper(),
                  onPressed: () => controller.leftPorch(),
                  color: controller.smartHome
                          .findRoom(Rooms.leftPorch)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.leftPorch)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: LeftPorchDoorClipper(),
                  onPressed: () => controller.leftPorchdoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.leftPorch)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: LivingRoomClipper(),
                  onPressed: () => controller.livingRoom(),
                  color: controller.smartHome
                          .findRoom(Rooms.livingRoom)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.livingRoom)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: MasterBathClipper(),
                  onPressed: () => controller.masterBath(),
                  color: controller.smartHome
                          .findRoom(Rooms.masterBath)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.masterBath)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: MasterBathDoorClipper(),
                  onPressed: () => controller.masterBathDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.masterBath)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: MasterRoomClipper(),
                  onPressed: () => controller.masterRoom(),
                  color: controller.smartHome
                          .findRoom(Rooms.master)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.master)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: MasterRoomDoorClipper(),
                  onPressed: () => controller.masterRoomDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.master)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: RBRBMasterClipper(),
                  onPressed: () => controller.rbrbm(),
                  color: controller.smartHome
                          .findRoom(Rooms.rbrbmaster)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.rbrbmaster)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: RBRBMasterDoorClipper(),
                  onPressed: () => controller.rbrbmDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.rbrbmaster)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: RightPorchClipper(),
                  onPressed: () => controller.rightPorch(),
                  color: controller.smartHome
                          .findRoom(Rooms.rightPorch)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.rightPorch)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: RightPorchDoorClipper(),
                  onPressed: () => controller.rightPorchDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.rightPorch)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: TopLeftDoorClipper(),
                  onPressed: () => controller.topLeftDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.topLeft)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
                Clip(
                  clipper: TopLeftRoomClipper(),
                  onPressed: () => controller.topLeft(),
                  color: controller.smartHome
                          .findRoom(Rooms.topLeft)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.topLeft)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: TopRightRoomClipper(),
                  onPressed: () => controller.topRight(),
                  color: controller.smartHome
                          .findRoom(Rooms.topRight)!
                          .isEmergency
                          .value
                      ? Colors.red
                      : controller.smartHome
                              .findRoom(Rooms.topRight)!
                              .lightIsOn
                              .value
                          ? Colors.orange.withOpacity(0.6)
                          : Colors.grey,
                ),
                Clip(
                  clipper: TopRightDoorClipper(),
                  onPressed: () => controller.topRightDoor(),
                  color: controller.smartHome
                          .findRoom(Rooms.topRight)!
                          .doorIsOpen
                          .value
                      ? Colors.white
                      : Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
