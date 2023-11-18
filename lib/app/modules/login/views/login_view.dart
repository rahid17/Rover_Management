import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/AuthData/authData.dart';
import 'package:new_project/app/modules/mainApp/controllers/main_app_controller.dart';
import 'package:new_project/app/modules/navView/views/nav_view_view.dart';
import 'package:new_project/app/modules/signUp/views/sign_up_view.dart';
import 'package:new_project/app/routes/app_pages.dart';
import 'package:new_project/utils/darkModeButton.dart';
import 'package:new_project/widget/kText.dart';
import 'package:new_project/widget/kTextFormField.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
   LoginView({Key? key}) : super(key: key);
  // final _formKey = GlobalKey<FormState>();
  void validate() {
    // FormState form = formKey.currentState;

    if (AuthData.formKey.currentState!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    } 
  }
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: Form(
        key: AuthData.formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height/10*2,
                    width: Get.height/10*2,
                  child: Image.asset("assets/logo/bn_scout_logo.png"),
                  ),
                  SizedBox(height: 20,),
                  KText(
                    data: "Welcome",
                    fontsize: 35,),
                  KText(
                    data: "Log in to your existing account",
                    fontsize: 19,),
                  SizedBox(height: 30,),
                  KTextFormField(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                    controller: AuthData.email,
                  
                    validator: (value){
                      if(value == null || value==""){
                        return "Enter your Email";
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  KTextFormField(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock),
                    controller: AuthData.password,
                    obsecureText: true,
                    validator: (value){
                      if(value == null || value==""){
                        return"Enter your Password";
                      }
                    },
                  ),
                  SizedBox(height: 30,),
                  
                      
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      if(AuthData.formKey.currentState!.validate()){
                        // if(AuthData.email.text== "abc@gmail.com" && AuthData.password.text=="12345"){
                        //   print("invalid");
                        // }
                        print("valid");
                        controller.logIn();
                        // Navigator.pushReplacementNamed(context, Routes.NAV_VIEW);
                      }else{
                        print("Invalid");
                       return null; 
                      }
            
                      // SnackBar(content: Text("Hello"),
                      // action: SnackBarAction(label: "Hlw", onPressed: (){}),);
            
                      // if(AuthData.formKey.currentState!.validate()){
                      //         // if(AuthData.email.text=="abc@gmail.com" || AuthData.pass.text=="Aa12345@#"){
                      //         //   print(" Invalid password ok");
                      //         // }else{
                      //         //   print("Access granted");
                                
                      //         // }
                      //         print("matched");
                      //       }else{
                      //         print("not matched");
                      //         return null;
                      //       }
                      // controller.logIn();
                    }, child: Text("Login"),)),
                  SizedBox(height: 40,),
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Don't have an account?",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "  ",style: TextStyle(fontSize: 17)),
                    TextSpan(text: "Sign Up",style: TextStyle(fontSize: 17, color: Colors.blueAccent[700]),
                    recognizer: TapGestureRecognizer()..onTap= ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpView(),))
                    ),
                  ])),

                  SizedBox(height: 40,),

                  SizedBox(
                    child: KDarkModeButton(),
                  )   
                      
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

