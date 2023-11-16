import 'package:get/get.dart';

import '../controllers/nav_view_controller.dart';

class NavViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavViewController>(
      () => NavViewController(),
    );
  }
}
