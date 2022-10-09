import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/notificationModel.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);
  List<NotificationModel> model = [
    NotificationModel(image: "assets/appBarLogo.png",desc: "Your Order has been placed. The Order ID is 3157",
    date: "23 Aug 2022 05:48:45"),
    NotificationModel(image: "assets/appBarLogo.png",desc: "Your Order has been placed. The Order ID is 3156",
    date: "23 Aug 2022 05:42:41"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leading: Container(),
      title: "Notifications",
      body: GetBuilder<HomePageController>(builder: (controller) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: model.length,

            itemBuilder: (context,index){
          return Column(
            children: [
              SizedBox(height: 10,),
              SizedBox(
                // height: kToolbarHeight,
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(model[index].image!,color: DynamicColors.primaryColor,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width -80,
                          height: kToolbarHeight - 15,
                          child: Text(model[index].desc!,style: poppinsStyle(fontSize: 15),textAlign: TextAlign.start, ),
                        ),
                        SizedBox(height: 3,),
                        Text(model[index].date!,style: poppinsStyle(color: DynamicColors.blackColor.withOpacity(0.5),fontSize: 12),overflow: TextOverflow.ellipsis ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider()
            ],
          );
        });
      }),
    );
  }
}
