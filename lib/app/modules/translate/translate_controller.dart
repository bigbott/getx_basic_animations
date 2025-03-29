import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider.dart';
import 'package:getx_basic_animations/app/common/ticker/simple_ticker_provider_mixin.dart';

class TranslateController extends GetxController with SimpleTickerProviderMixin {
  late final AnimationController animationController;

  late final Animation<Offset?> _translateAnimation;
  Offset _offset = Offset(0, 0);
  get offset => _offset;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      // vsync: SimpleTickerProvider(),
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() {
        _offset = _translateAnimation.value!;
        update();
      });
    _translateAnimation = Tween(
      begin: Offset(0, 0), end: Offset(0, 400)).animate(animationController);
    
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
