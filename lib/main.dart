import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false, 
        title: "Rover Management",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
