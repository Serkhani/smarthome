import 'package:flutter/material.dart';

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

