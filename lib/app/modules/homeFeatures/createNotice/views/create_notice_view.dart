import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_notice_controller.dart';

class CreateNoticeView extends GetView<CreateNoticeController> {
  const CreateNoticeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateNoticeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateNoticeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
