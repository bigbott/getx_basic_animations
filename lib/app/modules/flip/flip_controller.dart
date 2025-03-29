import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider_mixin.dart';

class FlipController extends GetxController with SimpleTickerProviderMixin {
  late final AnimationController animationController;

  late final Animation<double?> _flipAnimation;
  double _flip = 0.0;
  get flip => _flip;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      // vsync: SimpleTickerProvider(),
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() {
        _flip = _flipAnimation.value!;
        update();
      });
    _flipAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.elasticInOut));
    ;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
