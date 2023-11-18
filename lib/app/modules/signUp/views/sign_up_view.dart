import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:new_project/app/modules/login/views/login_view.dart';
import 'package:new_project/widget/kText.dart';
import 'package:new_project/widget/kTextFormField.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
     
      body:  Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(
                  height: Get.height/10*1.5,
                  width: Get.height/10*1.5,
                child: Image.asset("assets/logo/bn_scout_logo.png"),
                ),
                SizedBox(height: 20,),
                KText(
                  data: "Create a new account.",
                  fontsize: 35,),
                SizedBox(height: 10,),
                KTextFormField(
                  label: Text("Full name"),
                  prefixIcon: Icon(Icons.person),
                ),
                SizedBox(height: 10),
                 KTextFormField(
                  label: Text("Mobile Number"),
                  prefixIcon: Icon(Icons.call),
                ),
                SizedBox(height: 10),
                 KTextFormField(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                ),
                SizedBox(height: 10),
                 KTextFormField(
                  label: Text("Institute Code"),
                  prefixIcon: Icon(Icons.code),
                ),
                SizedBox(height: 10),
                 KTextFormField(
                  label: Text("User name"),
                  prefixIcon: Icon(Icons.verified_user_outlined),
                ),
                SizedBox(height: 10),
                 KTextFormField(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                SizedBox(height: 10), KTextFormField(
                  label: Text("Confirm Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                // SizedBox(height: 10),
                //  KTextFormField(
                //   label: Text("Email"),
                //   prefixIcon: Icon(Icons.email),
                // ),
                SizedBox(height: 20),
                
                SizedBox(
                  child: ElevatedButton(onPressed: () {
                    showDialog(context: context, 
                    builder: (context) => AlertDialog(
                      title: Center(child: Text("Successful")),
                      content: Text("      Account Created Successfully"),
                    ),);
                  }, child: Text("Create Account")),
                ),
                SizedBox(height: 10),
                Text.rich(TextSpan(children: [
              TextSpan(text: "Already have an account?",style: TextStyle(fontSize: 17)),
              TextSpan(text: "  ",style: TextStyle(fontSize: 17)),
              TextSpan(text: "Login",style: TextStyle(fontSize: 17, color: Colors.blueAccent[700]),
              recognizer: TapGestureRecognizer()..onTap= ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),))
              ),
            ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
