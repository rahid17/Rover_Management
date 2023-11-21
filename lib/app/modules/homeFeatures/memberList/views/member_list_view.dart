import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/member_list_controller.dart';

class MemberListView extends GetView<MemberListController> {
  const MemberListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MemberListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MemberListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
