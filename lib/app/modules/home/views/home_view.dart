import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/widget/kAppDashboardIcon.dart';
import 'package:new_project/widget/kText.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
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
                              KText(data: "Unit : FCI Boys in Rover", fontsize: 24, FontWeight: FontWeight.bold),
                            ],
                          ), 
                          SizedBox(height: 5,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              KText(data: "Unit Code: FCIRSG-BR", fontsize: 16, FontWeight: FontWeight.bold),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: GridView.builder(
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ),
                  //    itemCount: controller.featureList.length ,
                  //    itemBuilder:(context, index ) //=> HomeController(feature)
                  //    {
                  //     KAppDashbordIcon(data: "data");
                  //    }
                  //   //  {
                  //   //   return controller.featureList 
                  //   //   // Column(
                  //   //   //   children: [
                  //   //   //     SizedBox(height: 10,),
                  //   //   //     Container(
                  //   //   //       height: 70,
                  //   //   //       width: 70,
                  //   //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), 
                  //   //   //       color: Colors.white),
                  //   //   //       child: Icon(Icons.local_activity, size: 40),
                  //   //   //     ),
                  //   //   //     SizedBox(height: 5,),
                  //   //   //     KText(data: "Activity log ",fontsize: 14,maxLines: 2,FontWeight: FontWeight.bold,)
                  //   //   //   ],
                  //   //   // );
                  //   //  },
                  //               ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KAppDashbordIcon(data: "Member",  Icons: Icons.groups,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "Ex-Member",  Icons: Icons.groups_2,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "Account",  Icons: Icons.account_balance_wallet,onTap: (){print("ok");},)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KAppDashbordIcon(data: "Task Schedule",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "Activity Log",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "Create Notice",  Icons: Icons.home,onTap: (){print("ok");},)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},),
                            KAppDashbordIcon(data: "data",  Icons: Icons.home,onTap: (){print("ok");},)
                          ],
                        ),
                      ],
                    ),
                  ),
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
