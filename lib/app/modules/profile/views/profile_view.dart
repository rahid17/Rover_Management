import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/utils/kAssetImage.dart';
import 'package:new_project/widget/kText.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
     
      body: Column(
        children: [
          Container(
            height: Get.height/100*6, 
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Colors.green[200],
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: KText(data: "Profile",fontsize: 28),
            ), 
          ), 
          SizedBox(
            height: Get.height/100*1,
          ),
          SingleChildScrollView(
            child: Container(
              height: Get.height/100*76.2,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.green[200]
              ),
              child: Padding(
                padding:  EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                              
                              height: 150,
                              width: 150,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                // image: DecorationImage(image: AssetImage(KAssetImage.defaultImage1))
                                ) ,
                              ),
                              Positioned(
                                // bottom: -3,
                                child:Container(
                                  height: 150,
                                  width:150, 
                                  decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // color: Colors.red,
                                  image: DecorationImage(image: AssetImage(KAssetImage.defaultImage1))
                                ) ,
                                )
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                // top: 110,
                                child:InkWell(
                                  onTap: (){
                                    //Edit Profile Photo
                                  },
                                  child: Container(
                                    height: 35,
                                    width:35, 
                                    decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  // image: DecorationImage(image: AssetImage(KAssetImage.defaultImage1))
                                  ) ,
                                  child: Icon(Icons.edit),
                                  ),
                                )
                              )
                          ],
                             
                          ),
                          KText(data: "First name: Rahid Uddin Ahmed",)
                        ],
                      ),
                      SizedBox(height: 600,)
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ) ,
    );
  }
}
