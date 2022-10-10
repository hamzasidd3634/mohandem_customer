import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/calendarModel.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class OrderLocation extends StatelessWidget {
  OrderLocation({Key? key}) : super(key: key);
  CalendarModel data = Get.arguments["data"];
  String date = Get.arguments["date"];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      body: GetBuilder<HomePageController>(builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Iconic.pencil_alt,
                          color: DynamicColors.transparent,
                        ),
                        Spacer(),
                        Text(
                          "Date & Time",
                          style: poppinsBold(
                              fontWeight: FontWeight.bold,
                              color: DynamicColors.primaryColor,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Icon(
                          Iconic.pencil_alt,
                          color: DynamicColors.blackColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Divider(
                      color: DynamicColors.primaryColor,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      date,
                      style: poppinsStyle(
                          color: DynamicColors.primaryColor, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${data.from} to ${data.to}",
                      style: poppinsStyle(
                          color: DynamicColors.primaryColor, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Iconic.pencil_alt,
                          color: DynamicColors.transparent,
                        ),
                        Spacer(),
                        Text(
                          "Location",
                          style: poppinsBold(
                              fontWeight: FontWeight.bold,
                              color: DynamicColors.primaryColor,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Icon(
                          Iconic.pencil_alt,
                          color: DynamicColors.blackColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/map.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width-80,
                          child: CustomTextField(
                            controller: TextEditingController(),
                            underLineColor: DynamicColors.primaryColor,
                            hintText: "Phone",


                            isHintLabel: true,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          FontAwesome.attention_circled,
                          color: DynamicColors.primaryColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    CustomButton(
                      text: "Confirm",
                      textStyle: poppinsStyle(color: DynamicColors.primaryColor),
                      onTap: (){
                        Get.toNamed(Routes.completePlacedOrder);
                      },
                    ),
                    SizedBox(height: 20,),
                    CustomButton(
                      text: "Cancel",
                      textStyle: poppinsStyle(color: DynamicColors.primaryColor),
                      onTap: (){
                        // Get.toNamed(Routes.homePage);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
