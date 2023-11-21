import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/app/modules/home/views/home_view.dart';
import 'package:new_project/app/modules/message/views/message_view.dart';
import 'package:new_project/app/modules/profile/views/profile_view.dart';
import 'package:new_project/utils/darkModeButton.dart';
import 'package:new_project/widget/kText.dart';

import '../controllers/nav_view_controller.dart';

class NavViewView extends GetView<NavViewController> {
  const NavViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NavViewController());
    return Scaffold(
      drawer: Drawer(
       child: Column(
        children: [
          Container(
            height: 200,
            // width: 20,
            color: Colors.green[100],
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                  
                  height: 90,
                  width: 90,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage("assets/user/user1.jpg"))
                    ) ,
                  // child: Image.asset("assets/user/user1.jpg"),
                 ), 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                       KText(
                        data: "Rahid Uddin Ahmed Asfi",
                        fontsize: 18, 
                        FontWeight: FontWeight.bold,
                       ),
                       Row(
                        children: [
                          KText(
                        data: "Designation : ",
                        fontsize: 16,
                       ),
                       KText(
                        data: "ARM",
                        fontsize: 16,
                        FontWeight: FontWeight.bold,
                       )
                        ],
                       ), 
                       Row(
                        children: [
                          KText(
                        data: "Group : ",
                        fontsize: 16,
                       ),
                       KText(
                        data: "Sodoy",
                        fontsize: 16,
                        FontWeight: FontWeight.bold,
                       )
                        ],
                       )
                  ],
                 )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: Get.width,
                child: Row(
                  children: [
                    Icon(Icons.home), 
                    SizedBox(width: 10,),
                    KText(data: "Home",)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: Get.width,
                child: Row(
                  children: [
                    Icon(Icons.notifications), 
                    SizedBox(width: 10,),
                    KText(data: "Notification",)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: Get.width,
                child: Row(
                  children: [
                    Icon(Icons.call), 
                    SizedBox(width: 10,),
                    KText(data: "Contact Us",)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: Get.width,
                child: Row(
                  children: [
                    Icon(Icons.info), 
                    SizedBox(width: 10,),
                    KText(data: "About Us",)
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 20,),

            Container(
                height: 80,
                width: Get.width,
                child: Row(
                  children: [
                    KText(data: "Dark Mode",),
                    SizedBox(width: 50,),
                    KDarkModeButton(),
                  ],
                ),
              ),
              SizedBox(height: 250,),

              ElevatedButton(onPressed: () {
                controller.logOut();


              }, child: KText(data: "Logout",)),
              SizedBox(height: 20,) ,

              KText(data: "All rights reserved by Rahid", fontsize: 11,)




              ],
            ),
          )

        
          
          
        ],
       ),
      ),
      appBar: AppBar(
        title: Column(
          children: [
            KText(data: "Rover",FontWeight: FontWeight.bold,fontsize: 22,color: Colors.black,),
            KText(data: "Management",FontWeight: FontWeight.bold,fontsize: 22,color: Colors.black,),
          ],
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50, ),
                Positioned(
                  top: 12,right: 15,
                  child: InkWell(
                    onTap: (){
                      controller.goToNotification();
                    },
                    child: Icon(Icons.notifications, size: 35,color: Colors.yellow,))),
                Positioned(
                  right: 19,  top: 10,
                  child: Center(
                    child: Container(
                      child: Text('1',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      
                    ),
                  ) ),
            ],
          )
        ],
      ),

      body: Obx(() => IndexedStack(
            index: controller.selectIndex.value,
            children: [
              HomeView(),
              MessageView(),
              ProfileView()
            ],
          )),
     

      bottomNavigationBar:  Obx(
        ()=> BottomNavigationBar(
          currentIndex: controller.selectIndex.value,
          onTap: controller.changeTabIndex,
          selectedItemColor: Colors.green,
          items: [
          BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.home,
                      size: 25.0,
                    ),
                  ),
                  label: 'Home',
                  
                ),
      
          BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.message,
                      size: 25.0,
                    ),
                  ),
                  label: 'Message',
                  
                ),
          BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.person,
                      size: 25.0,
                    ),
                  ),
                  label: 'Profile',
                  
                ),
        ]),
      ),
      );
  }
}
