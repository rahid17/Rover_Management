import 'package:get/get.dart';
import 'package:new_project/app/modules/home/views/home_view.dart';
import 'package:new_project/app/modules/message/views/message_view.dart';
import 'package:new_project/app/modules/profile/views/profile_view.dart';
import 'package:new_project/app/routes/app_pages.dart';

class NavViewController extends GetxController {
  RxInt selectIndex =0.obs;
  RxList bodyList =[
    HomeView(),
    MessageView(),
    ProfileView()
  ].obs;


    void changeTabIndex(int index) {
    selectIndex.value = index;
  }



 
  logOut(){

    
   Get.offAllNamed(Routes.LOGIN);
    
  }
}
