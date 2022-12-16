import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smarthome/app/data/clipper/doorclipper.dart';
import 'package:smarthome/app/data/clipper/leftporch_clipper.dart';
import 'package:smarthome/app/data/clipper/livingroom_clipper.dart';
import 'package:smarthome/app/data/clipper/masterbath_clipper.dart';
import 'package:smarthome/app/data/clipper/masterroom_clipper.dart';
import 'package:smarthome/app/data/clipper/rightporch_clipper.dart';
import 'package:smarthome/app/data/clipper/topleftroom_clipper.dart';
import 'package:smarthome/app/data/clipper/toprightroom_clipper.dart';

import '../../../data/clipper/botttomrightroombmaster_clipper.dart';
import '../../../data/clipper/roombyroombymaster_clipper.dart';
import '../controllers/homeui_controller.dart';

class HomeuiView extends GetView<HomeuiController> {
  const HomeuiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.back();
      }),
      body: Container(
        alignment: Alignment.centerLeft,
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            ClipPath(
              clipper: BottomRightRBMasterClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.amber,
              ),
            ),
            ClipPath(
              clipper: DoorClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                //  constraints:  BoxConstraints.tight(Size(240.0, 360.0)),

                color: Colors.red,
              ),
            ),
            ClipPath(
              clipper: LivingRoomClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.green,
              ),
            ),
            ClipPath(
              clipper: LeftPorchClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.orangeAccent,
              ),
            ),
            ClipPath(
              clipper: MasterRoomClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.blue,
              ),
            ),
            ClipPath(
              clipper: MasterBathClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.black,
              ),
            ),
            ClipPath(
              clipper: RightPorchClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.deepPurple,
              ),
            ),
            ClipPath(
              clipper: RBRBMasterClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.grey,
              ),
            ),
            ClipPath(
              clipper: TopLeftRoomClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.indigo,
              ),
            ),
            ClipPath(
              clipper: TopRightRoomClipper(),
              child: Container(
                constraints: const BoxConstraints.expand(height: 360.0),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
