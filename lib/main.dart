import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_project/app/modules/mainApp/views/main_app_view.dart';
import 'app/routes/app_pages.dart';
void main ()async{
 await GetStorage.init();
  runApp(MyApp());
}

