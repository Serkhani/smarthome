import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homeui_controller.dart';

class HomeuiView extends GetView<HomeuiController> {
  const HomeuiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            ClipRRect(
              child: Container(
                color: Colors.amber,
              ),
              clipper: ,
            )
          ],
        ),
      )
    );
  }
}
