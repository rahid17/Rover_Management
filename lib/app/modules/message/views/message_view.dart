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
            height: Get.height/100*6, 
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Colors.green[200],
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: KText(data: "Messages",fontsize: 28),
            ), 
          ), 
          SizedBox(
            height: Get.height/100*1,
          ),
          SingleChildScrollView(
            child: Container(
              height: Get.height/100*76.2,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.green[200]
              ),
              // child: ListView.separated(
              //   itemCount: 10,
              //   itemBuilder: itemBuilder, 
              //   separatorBuilder: , 
              //   ),
            ),
          )

        ],
      ) ,
    );
  }
}
