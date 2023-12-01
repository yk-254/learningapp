import 'package:get/get.dart';

import '../controllers/quest_controller.dart';

class QuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestController>(
      () => QuestController(),
    );
  }
}
