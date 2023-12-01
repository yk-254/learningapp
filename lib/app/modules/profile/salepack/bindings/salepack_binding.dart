import 'package:get/get.dart';

import '../controllers/salepack_controller.dart';

class SalepackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalepackController>(
      () => SalepackController(),
    );
  }
}
