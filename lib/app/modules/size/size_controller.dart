import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider_mixin.dart';

class SizeController extends GetxController with SimpleTickerProviderMixin{
  late final AnimationController animationController;

  late final Animation<double> _sizeAnimation;
  double _size = 50.0;
  get size => _size;


  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
     // vsync: SimpleTickerProvider(),
     vsync: this,
      duration: Duration(seconds: 1),
    )..addListener(() {
        _size = _sizeAnimation.value;
        update();
      });
    _sizeAnimation = animationController.drive(Tween(begin: 50.0, end: 150.0));
  }

  @override
  void onClose() {
     animationController.dispose();
     super.onClose();
  }
}
