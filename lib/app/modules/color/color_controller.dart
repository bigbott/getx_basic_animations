import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider_mixin.dart';

class ColorController extends GetxController with SimpleTickerProviderMixin {
  late final AnimationController animationController;

  late final Animation<Color?> _colorAnimation;
  Color _color = Colors.blue;
  get color => _color;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      // vsync: SimpleTickerProvider(),
      vsync: this,
      duration: Duration(seconds: 1),
    )..addListener(() {
        _color = _colorAnimation.value!;
        update();
      });
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(animationController);
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
