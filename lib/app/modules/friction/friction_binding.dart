import 'package:get/get.dart';

import 'friction_controller.dart';

class FrictionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FrictionController>(
      () => FrictionController(),
    );
  }
}
