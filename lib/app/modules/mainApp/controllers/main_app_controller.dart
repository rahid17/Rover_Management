

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/data/local_data.dart';

class MainAppController extends GetxController {
  RxBool theme =false.obs;
  @override
  void onInit() {
    checkTheme();
    // TODO: implement onInit
    super.onInit();
  }

  checkTheme()async{
    theme.value = await LocalData().getThemeData()?? false;
    Get.changeThemeMode(theme.value ? ThemeMode.dark:ThemeMode.light);
  }

  changeTheme(){
    theme.value =!theme.value;
    LocalData().setThemeData(theme.value);
    Get.changeThemeMode(theme.value? ThemeMode.dark:ThemeMode.light);
  }
}
