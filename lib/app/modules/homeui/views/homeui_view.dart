import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              Clip(clipper: BottomRightRBMasterClipper(), onPressed: ()=>controller.brrbm()),
              Clip(clipper: BRRoomBMasterDoorClipper(), onPressed: ()=>controller.brrbmdoor(), color: Colors.black,),
              Clip(clipper: LeftPorchClipper(), onPressed: ()=>controller.leftPorch()),
              Clip(clipper: LeftPorchDoorClipper(), onPressed: ()=>controller.leftPorchdoor(), color: Colors.black,),
              Clip(clipper: LivingRoomClipper(), onPressed: ()=>controller.livingRoom()),
              Clip(clipper: MasterBathClipper(), onPressed: ()=>controller.masterBath()),
              Clip(clipper: MasterBathDoorClipper(), onPressed: ()=>controller.masterBathDoor(), color: Colors.black,),
              Clip(clipper: MasterRoomClipper(), onPressed: ()=>controller.masterRoom()),
              Clip(clipper: MasterRoomDoorClipper(), onPressed: ()=>controller.masterRoomDoor(), color: Colors.black,),
              Clip(clipper: RBRBMasterClipper(), onPressed: ()=>controller.rbrbm()),
              Clip(clipper: RBRBMasterDoorClipper(), onPressed: ()=>controller.rbrbmDoor(), color: Colors.black,),
              Clip(clipper: RightPorchClipper(), onPressed: ()=>controller.rightPorch()),
              Clip(clipper: RightPorchDoorClipper(), onPressed: ()=>controller.rightPorchDoor(), color: Colors.black,),
              Clip(clipper: TopLeftDoorClipper(), onPressed: ()=>controller.topLeftDoor(), color: Colors.black,),
              Clip(clipper: TopLeftRoomClipper(), onPressed: ()=>controller.topLeft()),
              Clip(clipper: TopRightRoomClipper(), onPressed: ()=>controller.topRight()),
              Clip(clipper: TopRightDoorClipper(), onPressed: ()=>controller.topRightDoor(), color: Colors.black,),
              ],
          ),
        ),
      ),
    );
  }
}


