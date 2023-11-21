import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_schedule_controller.dart';

class TaskScheduleView extends GetView<TaskScheduleController> {
  const TaskScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TaskScheduleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TaskScheduleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
