import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ex_member_list_controller.dart';

class ExMemberListView extends GetView<ExMemberListController> {
  const ExMemberListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExMemberListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ExMemberListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
