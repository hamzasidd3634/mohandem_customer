import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kToolbarHeight,),
              Image.asset('assets/logo.png',height: MediaQuery.of(context).size.height/5,width:MediaQuery.of(context).size.width/2 ,),
              SizedBox(height: kToolbarHeight,),
              CustomTextField(controller: email,hintText: "Username",),
              SizedBox(height: 10,),
              CustomTextField(controller: password,hintText: "Password",obscureText: true,),
              SizedBox(height: 20,),
              CustomButton(
                text: "Sign In",
                textStyle: poppinsStyle(color: DynamicColors.primaryColor),
                onTap: (){
                  Get.toNamed(Routes.homePage);
                },
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  GestureDetector(

                      onTap: (){
                        Get.toNamed(Routes.signUp);
                      },
                      child: Text("Create Account",style: poppinsStyle(color: DynamicColors.blackColor,fontSize: 13),)),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.toNamed(Routes.forgotPassword);
                      },
                      child: Text("Forgot Password?",style: poppinsStyle(color: DynamicColors.blackColor,fontSize: 13),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
