import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/widget/kText.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(
              height: Get.height/10*2,
              width: Get.height/10*2,
            child: Image.asset("assets/logo/bn_scout_logo.png"),
            ),

            SizedBox(height: 20,),
            KText(
              data: "Rover Management",
              fontsize: 22),
            SizedBox(height: 50,),
            SizedBox(
              height: 50, 
              width: 50,
              child: CircularProgressIndicator()),
          ],
        ),
        ),
      );
    
  }
}


