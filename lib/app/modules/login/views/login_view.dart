import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/app/modules/signUp/views/sign_up_view.dart';
import 'package:new_project/widget/kTextFormField.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style: TextStyle(fontSize: 35),),
              Text("Log in to your existing account",style: TextStyle(fontSize: 19),),
              SizedBox(height: 30,),
              KTextFormField(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(height: 20),
              KTextFormField(
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock),
              ),
              SizedBox(height: 30,),
              
        
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(onPressed: (){
                  controller.logIn();
                }, child: Text("Login"),)),
              SizedBox(height: 40,),
              Text.rich(TextSpan(children: [
                TextSpan(text: "Don't have an account?",style: TextStyle(fontSize: 17)),
                TextSpan(text: "  ",style: TextStyle(fontSize: 17)),
                TextSpan(text: "Sign Up",style: TextStyle(fontSize: 17, color: Colors.blueAccent[700]),
                recognizer: TapGestureRecognizer()..onTap= ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpView(),))
                ),
              ]))
        
        
            ],
          ),
        ),
      ),

    );
  }
}

