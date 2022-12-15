import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/masterbathpainter.dart';
import '../../../data/masterroompainter.dart';
import '../../../data/porchpainter.dart';

class HouseView extends GetView {
  const HouseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Container(
          alignment: Alignment.centerLeft,
          constraints: const BoxConstraints.expand(),
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: PorchPainter(),
              ),
              // CustomPaint(
              //   size: const Size(240.0, 360.0),
              //   painter: MasterPainter(),
              // ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: RightPorchPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MiddleRightRoomByRoomByMasterPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: BottomRightRoomByMasterPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: TopRightRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: TopLeftRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: LivingRoomPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MasterBathPainter(),
              ),
              CustomPaint(
                size: const Size(240.0, 360.0),
                painter: MasterRoomPainter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path leftporchdoor = Path();
    leftporchdoor.moveTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.lineTo(size.width * 0.2025000, size.height * 0.3080000);
    leftporchdoor.lineTo(size.width * 0.2000000, size.height * 0.3600000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3560000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.close();
    return leftporchdoor;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class DoorsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path leftporchdoor = Path();
    leftporchdoor.moveTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.lineTo(size.width * 0.2025000, size.height * 0.3080000);
    leftporchdoor.lineTo(size.width * 0.2000000, size.height * 0.3600000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3560000);
    leftporchdoor.lineTo(size.width * 0.1875000, size.height * 0.3060000);
    leftporchdoor.close();

    canvas.drawPath(leftporchdoor, paint0);

    Path masterdoor = Path();
    masterdoor.moveTo(size.width * 0.2187500, size.height * 0.5140000);
    masterdoor.lineTo(size.width * 0.2187500, size.height * 0.5340000);
    masterdoor.lineTo(size.width * 0.2500000, size.height * 0.5300000);
    masterdoor.lineTo(size.width * 0.2512500, size.height * 0.5080000);
    masterdoor.lineTo(size.width * 0.2187500, size.height * 0.5140000);
    masterdoor.close();

    canvas.drawPath(masterdoor, paint0);

    Path masterbathdoor = Path();
    masterbathdoor.moveTo(size.width * 0.3100000, size.height * 0.6420000);
    masterbathdoor.lineTo(size.width * 0.3062500, size.height * 0.6580000);
    masterbathdoor.lineTo(size.width * 0.3387500, size.height * 0.6580000);
    masterbathdoor.lineTo(size.width * 0.3400000, size.height * 0.6420000);
    masterbathdoor.lineTo(size.width * 0.3100000, size.height * 0.6420000);
    masterbathdoor.close();

    canvas.drawPath(masterbathdoor, paint0);
    // room by master door

    Path roombmaster = Path();
    roombmaster.moveTo(size.width * 0.3975000, size.height * 0.5760000);
    roombmaster.lineTo(size.width * 0.3975000, size.height * 0.5940000);
    roombmaster.lineTo(size.width * 0.4375000, size.height * 0.5940000);
    roombmaster.lineTo(size.width * 0.4362500, size.height * 0.5780000);
    roombmaster.lineTo(size.width * 0.3975000, size.height * 0.5760000);
    roombmaster.close();

    canvas.drawPath(roombmaster, paint0);

    // room by room by master door

    Path roombroombmaster = Path();
    roombroombmaster.moveTo(size.width * 0.5000000, size.height * 0.5360000);
    roombroombmaster.lineTo(size.width * 0.5000000, size.height * 0.5600000);
    roombroombmaster.lineTo(size.width * 0.5362500, size.height * 0.5540000);
    roombroombmaster.lineTo(size.width * 0.5375000, size.height * 0.5300000);
    roombroombmaster.lineTo(size.width * 0.5000000, size.height * 0.5360000);
    roombroombmaster.close();

    canvas.drawPath(roombroombmaster, paint0);

    // topleft room door

    Path topleftdoor = Path();
    topleftdoor.moveTo(size.width * 0.2887500, size.height * 0.2420000);
    topleftdoor.lineTo(size.width * 0.2887500, size.height * 0.2720000);
    topleftdoor.lineTo(size.width * 0.3150000, size.height * 0.2700000);
    topleftdoor.lineTo(size.width * 0.3125000, size.height * 0.2340000);
    topleftdoor.lineTo(size.width * 0.2887500, size.height * 0.2420000);
    topleftdoor.close();

    canvas.drawPath(topleftdoor, paint0);

    // top right door

    Path toprightdoor = Path();
    toprightdoor.moveTo(size.width * 0.3887500, size.height * 0.1900000);
    toprightdoor.lineTo(size.width * 0.4012500, size.height * 0.1880000);
    toprightdoor.lineTo(size.width * 0.4012500, size.height * 0.2260000);
    toprightdoor.lineTo(size.width * 0.3862500, size.height * 0.2220000);
    toprightdoor.lineTo(size.width * 0.3887500, size.height * 0.1900000);
    toprightdoor.close();

    canvas.drawPath(toprightdoor, paint0);
    // right porch door

    Path rightporchdoor = Path();
    rightporchdoor.moveTo(size.width * 0.5675000, size.height * 0.3360000);
    rightporchdoor.lineTo(size.width * 0.5775000, size.height * 0.3340000);
    rightporchdoor.lineTo(size.width * 0.5812500, size.height * 0.3860000);
    rightporchdoor.lineTo(size.width * 0.5637500, size.height * 0.3880000);
    rightporchdoor.lineTo(size.width * 0.5675000, size.height * 0.3360000);
    rightporchdoor.close();

    canvas.drawPath(rightporchdoor, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RightPorchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path rightporch = Path();
    rightporch.moveTo(size.width * 1.125, size.height * 0.488);
    rightporch.lineTo(size.width * 1.125, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.79);
    rightporch.lineTo(size.width * 1.405, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.555);
    rightporch.lineTo(size.width * 1.305, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.330);
    rightporch.lineTo(size.width * 1.125, size.height * 0.418);

    canvas.drawPath(rightporch, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MiddleRightRoomByRoomByMasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path middleRightRoomBRBMPath = Path();
    middleRightRoomBRBMPath.moveTo(size.width * 0.991, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 0.925, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.790);
    middleRightRoomBRBMPath.lineTo(size.width * 0.905, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.97);
    middleRightRoomBRBMPath.lineTo(size.width * 1.105, size.height * 0.730);
    middleRightRoomBRBMPath.lineTo(size.width * 1.064, size.height * 0.730);

    canvas.drawPath(middleRightRoomBRBMPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomRightRoomByMasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path bottomRightRoomBRBMPath = Path();
    bottomRightRoomBRBMPath.moveTo(size.width * 0.812, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.885, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 1.04);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.655, size.height * 0.790);
    bottomRightRoomBRBMPath.lineTo(size.width * 0.725, size.height * 0.790);

    canvas.drawPath(bottomRightRoomBRBMPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TopRightRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path topRightRoomPath = Path();
    topRightRoomPath.moveTo(size.width * 0.725, size.height * 0.231);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.190);
    topRightRoomPath.lineTo(size.width * 0.665, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.08);
    topRightRoomPath.lineTo(size.width * 1.005, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.31);
    topRightRoomPath.lineTo(size.width * 0.725, size.height * 0.301);

    canvas.drawPath(topRightRoomPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TopLeftRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path topLeftRoomPath = Path();
    topLeftRoomPath.moveTo(size.width * 0.485, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.285, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.08);
    topLeftRoomPath.lineTo(size.width * 0.645, size.height * 0.31);
    topLeftRoomPath.lineTo(size.width * 0.555, size.height * 0.31);

    canvas.drawPath(topLeftRoomPath, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LivingRoomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.285, size.height * 0.466);
    path0.lineTo(size.width * 0.285, size.height * 0.68);
    path0.lineTo(size.width * 0.332, size.height * 0.68);

    canvas.drawPath(path0, paint);

    Path path1 = Path();
    path1.moveTo(size.width * 0.402, size.height * 0.68);
    path1.lineTo(size.width * 0.655, size.height * 0.68);
    path1.lineTo(size.width * 0.655, size.height * 0.765);
    path1.lineTo(size.width * 0.725, size.height * 0.765);

    canvas.drawPath(path1, paint);

    Path path2 = Path();
    path2.moveTo(size.width * 0.812, size.height * 0.765);
    path2.lineTo(size.width * 0.905, size.height * 0.765);
    path2.lineTo(size.width * 0.905, size.height * 0.710);
    path2.lineTo(size.width * 0.991, size.height * 0.710);

    canvas.drawPath(path2, paint);

    Path path3 = Path();
    path3.moveTo(size.width * 1.064, size.height * 0.710);
    path3.lineTo(size.width * 1.105, size.height * 0.710);
    path3.lineTo(size.width * 1.105, size.height * 0.488);

    canvas.drawPath(path3, paint);

    Path path4 = Path();
    path4.moveTo(size.width * 1.105, size.height * 0.418);
    path4.lineTo(size.width * 1.105, size.height * 0.330);
    path4.lineTo(size.width * 0.705, size.height * 0.330);
    path4.lineTo(size.width * 0.705, size.height * 0.301);

    canvas.drawPath(path4, paint);

    Path path5 = Path();
    path5.moveTo(size.width * 0.705, size.height * 0.231);
    path5.lineTo(size.width * 0.705, size.height * 0.211);
    path5.lineTo(size.width * 0.665, size.height * 0.211);
    path5.lineTo(size.width * 0.665, size.height * 0.330);
    path5.lineTo(size.width * 0.555, size.height * 0.330);

    canvas.drawPath(path5, paint);

    Path path6 = Path();
    path6.moveTo(size.width * 0.485, size.height * 0.330);
    path6.lineTo(size.width * 0.285, size.height * 0.330);
    path6.lineTo(size.width * 0.285, size.height * 0.396);

    canvas.drawPath(path6, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}