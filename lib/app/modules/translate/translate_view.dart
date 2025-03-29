import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'translate_controller.dart';

class TranslateView extends GetView<TranslateController> {
  const TranslateView({super.key});
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
            child: GetBuilder<TranslateController>(
              builder: (controller) {
                return Transform.translate(
                  offset: controller.offset,
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

