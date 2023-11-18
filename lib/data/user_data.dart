import 'package:get_storage/get_storage.dart';
import 'package:new_project/const/userDataKey.dart';

class UserData{
  final box =GetStorage();

  setUser({required String userName, required String password}) async{
    await box.read(UserDataKey.userData)?? false;
  }
}