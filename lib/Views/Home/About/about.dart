import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);
String about = "The idea of Mohandam service is conceived and developed by young Qatari cadres to meet the customers demand for professional tailoring services at the comfort of their home. The integration of technology and experienced manual work ensures that esteemed customers can save time and enjoy the best professional tailoring service at home";
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        centerWidget: false,
        body: Column(
          children: [
            Center(
              child: Image.asset("assets/logo.png",height: MediaQuery.of(context).size.height/8,),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              color: DynamicColors.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                children: [
                  Text(about,style: poppinsStyle(color: DynamicColors.whiteColor,fontSize: 13),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: DynamicColors.whiteColor,),
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Center(

                                  child: Icon(Icons.call,color: DynamicColors.whiteColor,),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Call",style: poppinsLightStyle(color: DynamicColors.whiteColor,fontSize: 12),)
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.comments);
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: DynamicColors.whiteColor,),
                                  borderRadius: BorderRadius.circular(40)
                                ),
                                child: Center(

                                    child: Icon(Icons.comment,color: DynamicColors.whiteColor,),

                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Comment",style: poppinsLightStyle(color: DynamicColors.whiteColor,fontSize: 12),)
                            ],
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.ratings);
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: DynamicColors.whiteColor,),
                                  borderRadius: BorderRadius.circular(40)
                                ),
                                child: Center(
                                  child: Icon(Icons.star,color: DynamicColors.whiteColor,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Rate",style: poppinsLightStyle(color: DynamicColors.whiteColor,fontSize: 12),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ));
  }
}
