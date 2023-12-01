import 'package:get/get.dart';

import '../controllers/courses_controller.dart';

class CoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursesController>(
      () => CoursesController(),
    );
  }
}
