import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_basic_animations/app/routes/app_pages.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(spacing: 40, children: [
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.SIZE);
            },
            child: Text(
              'Size animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.SIZE);
            },
            child: Text(
              'Size animation 2',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.COLOR);
            },
            child: Text(
              'Color animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.FLIP);
            },
            child: Text(
              'Flip animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.TRANSLATE);
            },
            child: Text(
              'Translate animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.GRAVITY);
            },
            child: Text(
              'Gravity animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
          CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.FRICTION);
            },
            child: Text(
              'Friction animation',
              style: TextStyle(fontSize: 20),
            ),
          ),
                    CupertinoButton.filled(
            sizeStyle: CupertinoButtonSize.medium,
            onPressed: () {
              Get.toNamed(Routes.SPRING);
            },
            child: Text(
              'Spring animation',
              style: TextStyle(fontSize: 20),
            ),
          ),

        ]),
      ),
    );
  }
}
