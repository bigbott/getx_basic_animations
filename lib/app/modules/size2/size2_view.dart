import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_basic_animations/app/modules/size2/disposer.dart';
import 'package:getx_basic_animations/app/modules/size2/size2_controller.dart';


class Size2View extends StatelessWidget{
  const Size2View({super.key});
  @override
  Widget build(BuildContext context) {
    var viewModel = SizeViewModel();
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
            child: ListenableBuilder(
              listenable: viewModel,
              builder: (context, child) {
                return Container(
                  width: viewModel.size,
                  height: viewModel.size,
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
                  viewModel.animationController.forward();
                },
                child: Text(
                  'Animate',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Disposer(dispose: viewModel.dispose)
        ]),
      ),
    );
  }
}
