import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_view_controller.dart';

class NavViewView extends GetView<NavViewController> {
  const NavViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NavViewController());
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
      body: ElevatedButton(
        onPressed: () {
          
        },
        child: Text("profile"),
        
      ),
      );
  }
}
