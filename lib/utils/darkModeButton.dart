import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/app/modules/mainApp/controllers/main_app_controller.dart';

class KDarkModeButton extends StatelessWidget {
  const KDarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppController());
    return Obx(() => IconButton(onPressed: (){
      controller.changeTheme();
    }, icon: controller.theme.value?
              Icon(Icons.toggle_on,size: 70,):
              Icon(Icons.toggle_off, size: 70,)
              ));
  }
}