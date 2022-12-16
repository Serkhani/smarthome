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
      body: InteractiveViewer(
        maxScale: 5.0,
        child: Container(
          alignment: Alignment.centerLeft,
          constraints: const BoxConstraints.expand(),
          child: Stack(
            children: [
              ClipPath(
                clipper: BottomRightRBMasterClipper(),
                child: GestureDetector(
                  onTap: ()=> print('brrbm'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.amber,
                  ),
                ),
              ),
              ClipPath(
                clipper: DoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('door clipper'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.red,
                  ),
                ),
              ),
              ClipPath(
                clipper: LivingRoomClipper(),
                child: GestureDetector(
                  onTap: ()=> print('living room'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.green,
                  ),
                ),
              ),
              ClipPath(
                clipper: LeftPorchClipper(),
                child: GestureDetector(
                  onTap: ()=> print('left porch'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              ClipPath(
                clipper: MasterRoomClipper(),
                child: GestureDetector(
                  onTap: ()=> print('masterroom'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.blue,
                  ),
                ),
              ),
              ClipPath(
                clipper: MasterBathClipper(),
                child: GestureDetector(
                  onTap: ()=> print('masterbath'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.black,
                  ),
                ),
              ),
              ClipPath(
                clipper: RightPorchClipper(),
                child: GestureDetector(
                  onTap: ()=> print('rightporch'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              ClipPath(
                clipper: RBRBMasterClipper(),
                child: GestureDetector(
                  onTap: ()=> print('rbrbmaster'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.grey,
                  ),
                ),
              ),
              ClipPath(
                clipper: TopLeftRoomClipper(),
                child: GestureDetector(
                  onTap: ()=> print('topleft'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.indigo,
                  ),
                ),
              ),
              ClipPath(
                clipper: TopRightRoomClipper(),
                child: GestureDetector(
                  onTap: ()=> print('topright'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
