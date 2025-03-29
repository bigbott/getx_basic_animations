import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'size_controller.dart';

class SizeView extends GetView<SizeController> {
  const SizeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
          Positioned(
            top: 20,
          //  left: 20,
            child: GetBuilder<SizeController>(
              builder: (controller) {
                return Container(
                  width: controller.size,
                  height: controller.size,
                  color: Colors.blue,
                );
              }
            ),
          ),
          Positioned(
            bottom: 200,
           // left: 100,
            child: Center(
              child: CupertinoButton.filled(
                onPressed: () {
                  controller.animationController.forward();
                },
                child: Text(
                  'Animate',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
