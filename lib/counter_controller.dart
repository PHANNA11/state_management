import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt number = 0.obs;
  void increment() async {
    number.value++;
    update();
  }

  void decrement() async {
    number.value--;
    update();
  }
}

// class CounterBinding implements Bindings {
//   @override
//   void dependencies() {
//     // TODO: implement dependencies
//     Get.lazyPut(() => CounterController());
//   }
// }
