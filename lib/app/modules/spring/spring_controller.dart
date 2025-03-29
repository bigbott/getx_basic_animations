import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider_mixin.dart';

class SpringController extends GetxController with SimpleTickerProviderMixin {
  late final AnimationController animationController;

  double _value = 0.0;
  get value => _value;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController.unbounded(
      // vsync: SimpleTickerProvider(),
      vsync: this,
      //  duration: Duration(seconds: 2),
    )..addListener(() {
        _value = animationController.value;
        update();
      });
  }

  void startSpringMotion() {
    animationController.animateWith(SpringSimulation(
      const SpringDescription(
        mass: 5.8,
        stiffness: 15,
        damping: 0.1,
      ),
      0.0, // starting position
      300.0, // ending position
      100.0, // starting velocity
    ));
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
