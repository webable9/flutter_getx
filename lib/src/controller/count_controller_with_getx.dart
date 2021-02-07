import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  static CountControllerWithGetX get to => Get.find();
  int count = 0;

  void increase() {
    count++;
    update();
  }

  void putNumber(int value) {
    count = value;
    update();
  }
}
