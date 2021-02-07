import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(builder: (_) {
            return Text(
              _.count.toString(),
              style: TextStyle(fontSize: 40),
            );
          }),
          // Obx(() => Text(
          //       controller.count.toString(),
          //       style: TextStyle(fontSize: 40),
          //     )),
          RaisedButton(
            onPressed: () {
              //Get.find<CountControllerWithGetX>().increase();
              //CountControllerWithGetX.to.increase(); //static으로 정의 했을 경우
              controller.increase(); //extends GetView 했을 경우
            },
          ),
        ],
      ),
    );
  }
}
