import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/pathWidgets.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GetBuilder<HomePageController>(builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(child: Image.asset("assets/logo.png",height: MediaQuery.of(context).size.height/6,)),
            SizedBox(height: kToolbarHeight,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.orderCalendar);
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/cart.png",height: MediaQuery.of(context).size.height/10,),
                            Text("Place Order",style: poppinsStyle(color: DynamicColors.primaryColor),),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                        height: MediaQuery.of(context).size.height/9,
                        child: VerticalDivider(color: DynamicColors.blackColor.withOpacity(0.5))),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      child: GestureDetector(
                        onTap: (){
                          controller.index = 3;
                          controller.update();
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/myOrder.png",height: MediaQuery.of(context).size.height/10,),
                            Text("My Order",style: poppinsStyle(color: DynamicColors.primaryColor),),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Divider(color: DynamicColors.blackColor.withOpacity(0.5),endIndent: MediaQuery.of(context).size.width/1.9,indent: MediaQuery.of(context).size.width/5,),
                    Divider(color: DynamicColors.blackColor.withOpacity(0.5),endIndent: MediaQuery.of(context).size.width/5,indent: MediaQuery.of(context).size.width/1.9,),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      child: Column(
                        children: [
                          Image.asset("assets/price.png",height: MediaQuery.of(context).size.height/12,),
                          Text("Price",style: poppinsStyle(color: DynamicColors.primaryColor),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                        height: MediaQuery.of(context).size.height/9,
                        child: VerticalDivider(color: DynamicColors.blackColor.withOpacity(0.5))),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.about);
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/about.png",height: MediaQuery.of(context).size.height/12,),
                            Text("About",style: poppinsStyle(color: DynamicColors.primaryColor),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}
