import 'package:get/get.dart';

import '../controllers/attendees_controller.dart';

class AttendeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AttendeesController>(
      () => AttendeesController(),
    );
  }
}
