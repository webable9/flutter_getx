import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key key}) : super(key: key);
  CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        _controllerWithGetX.increase();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
