import 'package:get/get.dart';

import 'spring_controller.dart';

class SpringBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpringController>(
      () => SpringController(),
    );
  }
}
