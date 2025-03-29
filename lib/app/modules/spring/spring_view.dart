import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'spring_controller.dart';

class SpringView extends GetView<SpringController> {
  const SpringView({super.key});
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
            child: GetBuilder<SpringController>(
              builder: (controller) {
                return Positioned(
                  top: controller.value,
                  child: Container(
                    color: Colors.blue,
                    width: 200,
                    height: 200,
                  ),
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
                  if (controller.animationController.isCompleted){
                    controller.animationController.reset();
                  }
                  controller.startSpringMotion();
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

