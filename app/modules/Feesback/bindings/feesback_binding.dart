import 'package:get/get.dart';

import '../controllers/feesback_controller.dart';

class FeesbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeesbackController>(
      () => FeesbackController(),
    );
  }
}
