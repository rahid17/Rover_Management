import 'package:get/get.dart';
import 'package:new_project/app/modules/homeFeatures/accounts/views/accounts_view.dart';
import 'package:new_project/app/modules/homeFeatures/createNotice/views/create_notice_view.dart';
import 'package:new_project/app/modules/homeFeatures/exMemberList/views/ex_member_list_view.dart';
import 'package:new_project/app/modules/homeFeatures/memberList/views/member_list_view.dart';

class HomeController extends GetxController {

  RxList featureList = [
    MemberListView(), 
    ExMemberListView(), 
    CreateNoticeView(), 
    AccountsView(), 
    
  ].obs;
}
