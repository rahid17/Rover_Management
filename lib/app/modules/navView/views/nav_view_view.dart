import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_view_controller.dart';

class NavViewView extends GetView<NavViewController> {
  const NavViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('NavViewView'),
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
