import 'package:get/get.dart';

import '../controllers/ex_member_list_controller.dart';

class ExMemberListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExMemberListController>(
      () => ExMemberListController(),
    );
  }
}
