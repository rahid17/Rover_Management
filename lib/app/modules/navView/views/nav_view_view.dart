import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_view_controller.dart';

class NavViewView extends GetView<NavViewController> {
  // static const String routeName = '/navViewRoute';
  const NavViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NavViewController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rover Management")
            ],
          )
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
