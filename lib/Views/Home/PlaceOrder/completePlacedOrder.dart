import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';


class CompletePlacedOrder extends StatelessWidget {
  const CompletePlacedOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/arbi.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20,),
          Text("Thank you for booking our service",style: poppinsBold(fontSize: 20,fontWeight: FontWeight.bold,color: DynamicColors.primaryColor),),
          SizedBox(height: 20,),
          CustomButton(
            text: "Show Details",
            textStyle: poppinsStyle(color: DynamicColors.primaryColor),
            onTap: (){
              Get.toNamed(Routes.homePage);
            },
          ),
        ],),
      ),
    ));
  }
}
