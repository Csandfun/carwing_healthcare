import 'package:get/get.dart';

import '../controllers/organizer_page_controller.dart';

class OrganizerPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrganizerPageController>(
      () => OrganizerPageController(),
    );
  }
}
