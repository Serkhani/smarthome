import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smarthome/app/modules/home/views/startview.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const HouseView(),
    );
  }
}
