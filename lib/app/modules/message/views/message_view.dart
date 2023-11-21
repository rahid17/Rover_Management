import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/widget/kText.dart';

import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  const MessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Container(
            height: 60, 
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.green[200],
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: KText(data: "Messages",fontsize: 28),
            ), 
          ), 
          SizedBox(
            height: 10,
          ),

        ],
      ) ,
    );
  }
}
