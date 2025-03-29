import 'package:get/get.dart';

import 'flip_controller.dart';

class FlipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlipController>(
      () => FlipController(),
    );
  }
}
