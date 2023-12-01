import 'package:get/get.dart';

import '../controllers/addquest_controller.dart';

class AddquestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddquestController>(
      () => AddquestController(),
    );
  }
}
