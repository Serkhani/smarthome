import 'package:get/get.dart';

import '../controllers/homeui_controller.dart';

class HomeuiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeuiController>(
      () => HomeuiController(),
    );
  }
}
