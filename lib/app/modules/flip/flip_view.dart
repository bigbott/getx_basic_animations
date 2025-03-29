import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'flip_controller.dart';

class FlipView extends GetView<FlipController> {
  const FlipView({super.key});
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
            child: GetBuilder<FlipController>(
              builder: (controller) {
                return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateX(pi * controller.flip ),
            alignment: FractionalOffset.center,
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

