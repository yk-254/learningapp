import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

  void nextPage() {
    Timer(Duration(seconds: 3), () {
      Get.toNamed("/home");
    });
  }
}
