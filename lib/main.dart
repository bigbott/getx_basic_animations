import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/extensions/device_previewing.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ).withDevicePreview(true),
  );
}
