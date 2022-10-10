import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return CustomAppBarNoController(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CustomTextField(controller: email,hintText: "Enter your email address",),

            SizedBox(height: 20,),
            CustomButton(
              text: "Request",
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
