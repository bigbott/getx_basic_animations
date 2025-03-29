import 'package:get/get.dart';

import 'color_controller.dart';

class ColorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColorController>(
      () => ColorController(),
    );
  }
}
