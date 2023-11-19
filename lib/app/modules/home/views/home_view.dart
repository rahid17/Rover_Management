import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/widget/kText.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: .5,), 

            //Unit Name Part..
            Container(
              height: 150,
              width: Get.width,
              // color: Colors.red,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)), 
                color: Colors.green[200]
                ),
        
                child: Padding(
                  padding:  EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
        
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              KText(data: "Unit :", fontsize: 24, FontWeight: FontWeight.bold),
                              SizedBox(width: 10,),
                              KText(data: "FCI Boys in Rover", fontsize: 24, FontWeight: FontWeight.bold),
                            ],
                          ), 
                          SizedBox(height: 5,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              KText(data: "Unit Code:", fontsize: 16, FontWeight: FontWeight.bold),
                              SizedBox(width: 10,),
                              KText(data: "FCIRSG-BR", fontsize: 16, FontWeight: FontWeight.bold),
                            ],
                          ), 
                        ],
                      ),
                    ],
                  ),
                ),
            ), 

            SizedBox(height: 20,),

                        //Features part..
            SingleChildScrollView(
              child: Container(
                height: 320, 
                width: Get.width, 
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)), 
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green[200]
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ),
                   itemCount:12 ,
                   itemBuilder:(context, index ){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), 
                            color: Colors.amber),
                          ),
                          SizedBox(height: 5,),
                          KText(data: "Activity log ",fontsize: 14,maxLines: 2,FontWeight: FontWeight.bold,)
                        ],
                      ),
                    );
                   },
              )
              ),
            ), 



            SizedBox(height: 20,), 

            Container(
              height: 200, 
              width: Get.width, 
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)), 
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green[200]
                ),
            )
          ],
        ),
      ),
    );
  }
}
