import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/app/routes/app_pages.dart';
import 'package:new_project/themes/dark.dart';
import 'package:new_project/themes/light.dart';

import '../controllers/main_app_controller.dart';

class MyApp extends GetView<MainAppController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.Put(()=>MainAppController());
  Get.lazyPut(()=>MainAppController());
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false, 
          title: "Rover Management",
          themeMode: controller.theme.value ? ThemeMode.light:ThemeMode.dark,
          theme: lightTheme,
          darkTheme: darkTheme,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
    
      ),
    );
  }
}
