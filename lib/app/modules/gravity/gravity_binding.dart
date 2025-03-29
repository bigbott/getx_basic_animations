import 'package:get/get.dart';

import 'gravity_controller.dart';

class GravityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GravityController>(
      () => GravityController(),
    );
  }
}
