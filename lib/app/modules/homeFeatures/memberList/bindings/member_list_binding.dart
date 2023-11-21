import 'package:get/get.dart';

import '../controllers/member_list_controller.dart';

class MemberListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberListController>(
      () => MemberListController(),
    );
  }
}
