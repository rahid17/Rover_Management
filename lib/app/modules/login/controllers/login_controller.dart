import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:new_project/app/routes/app_pages.dart';


class LoginController extends GetxController {
@override
  void onInit() {
    // logIn();
    super.onInit();

  }

  logIn(){
    
   Get.offAllNamed(Routes.NAV_VIEW);
    
  }
}
