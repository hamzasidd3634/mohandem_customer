import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final fName = TextEditingController();
  final lName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final cPassword = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10 ,),
            CustomTextField(controller: fName,hintText: "First Name",),
            SizedBox(height: 10,),
            CustomTextField(controller: lName,hintText: "Last Name",),
            SizedBox(height: 10,),
            CustomTextField(controller: username,hintText: "Username",),
            SizedBox(height: 10,),
            CustomTextField(controller: email,hintText: "Email",isEmail: true,),
            SizedBox(height: 10,),
            CustomTextField(controller: password,hintText: "Password",obscureText: true,),
            SizedBox(height: 10,),
            CustomTextField(controller: cPassword,hintText: "Confirm Password",obscureText: true,),
            SizedBox(height: 20,),
            CustomTextField(controller: phone,hintText: "Phone",textInputType: TextInputType.phone),
            SizedBox(height: 20,),
            CustomTextField(controller: address,hintText: "Address (Optional)"),
            SizedBox(height: 20,),
            CustomButton(
              text: "Sign Up",
              textStyle: poppinsStyle(color: DynamicColors.primaryColor),
              onTap: (){
                Get.toNamed(Routes.homePage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
