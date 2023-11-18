import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/app/modules/home/views/home_view.dart';
import 'package:new_project/app/modules/message/views/message_view.dart';
import 'package:new_project/app/modules/profile/views/profile_view.dart';

import '../controllers/nav_view_controller.dart';

class NavViewView extends GetView<NavViewController> {
  const NavViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavViewController());
    return Scaffold(
      drawer: Drawer(
        shape: BeveledRectangleBorder(),
      ),
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50, ),
                Positioned(
                  top: 12,right: 15,
                  child: Icon(Icons.notifications, size: 35)),
                Positioned(
                  right: 18,  top: 10,
                  child: Center(
                    child: Container(
                      child: Text('1',textAlign: TextAlign.center),
                      
                    ),
                  ) ),
            ],
          )
        ],
      ),

      // body: Obx(() => controller.bodyList[controller.selectIndex.value]),
      body: Obx(() => IndexedStack(
            index: controller.selectIndex.value,
            children: [
              HomeView(),
              MessageView(),
              ProfileView()
            ],
          )),
     

      bottomNavigationBar:  BottomNavigationBar(
        // currentIndex: controller.selectIndex.value,
        
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
        // BottomNavigationBarItem(icon: InkWell(onTap: () {
        //     controller.selectIndex.value=0;
        // }, child: Icon(Icons.home)),label: "Home"),
        BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 25.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
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
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
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
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
        // BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
        // BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),

      // bottomNavigationBar: BottomAppBar(
      //     child: Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
      //         children: [
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      //               Text("Home")
      //             ],
      //           ),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               IconButton(onPressed: (){}, icon: Icon(Icons.message)),
      //               Text("Home")
      //             ],
      //           ),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               IconButton(onPressed: (){}, icon: Icon(Icons.person)),
      //               Text("Home")
      //             ],
      //           ),
      //           // IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrientationWork())), icon: Icon(Icons.settings)),
      //         ],
      //       ),
      //     ),
      //   ),
      
      );
  }
}
