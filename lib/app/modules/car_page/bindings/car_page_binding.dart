import 'package:get/get.dart';

import '../controllers/car_page_controller.dart';

class CarPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarPageController>(
      () => CarPageController(),
    );
  }
}
