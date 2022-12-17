import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/clipper/brroombmasterdoor_clipper.dart';
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
import '../../../data/clipper/topleftdoor_clipper.dart';
import '../../../data/clipper/topleftroom_clipper.dart';
import '../../../data/clipper/toprightdoor_clipper.dart';
import '../../../data/clipper/toprightroom_clipper.dart';
import '../../../data/clipper/botttomrightroombmaster_clipper.dart';
import '../../../data/clipper/roombyroombymaster_clipper.dart';
import '../../../data/painter/startuppainter.dart';
import '../controllers/homeui_controller.dart';

class HomeuiView extends GetView<HomeuiController> {
  const HomeuiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        maxScale: 5.0,
        child: Container(
          alignment: Alignment.centerLeft,
          constraints: const BoxConstraints.expand(),
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: StartUpPainter(
                  outerprogress: 1.0,
                  roomsprogress: 1.0,
                  color: Colors.black
                    ),
              ),
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
              ClipPath(
                clipper: TopLeftDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('topleft door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: TopRightDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('topright door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: LeftPorchDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('left porch door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: RightPorchClipper(),
                child: GestureDetector(
                  onTap: ()=> print('right porch'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.red,
                  ),
                ),
              ),
              ClipPath(
                clipper: MasterRoomDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('master door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: MasterBathDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('master bath door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: RBRBMasterDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('rbrbmaster door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: BRRoomBMasterDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('bottom right room by master'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
                  ),
                ),
              ),
              ClipPath(
                clipper: RightPorchDoorClipper(),
                child: GestureDetector(
                  onTap: ()=> print('right porch door'),
                  child: Container(
                    constraints: const BoxConstraints.expand(height: 360.0),
                    color: Colors.teal,
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
