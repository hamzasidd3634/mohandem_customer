import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/ordersModel.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({Key? key}) : super(key: key);

  OrdersModel model = Get.arguments["data"];
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "My Orders",
      body: GetBuilder<HomePageController>(builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: DynamicColors.primaryColor,width: 2),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/cart.png"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID : ${model.orderID}",style: poppinsStyle(fontSize: 15,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),
                        SizedBox(height: 3,),
                        Text("Order Date : ${model.orderDate}",style: poppinsStyle(fontSize: 15,color: DynamicColors.primaryColor), ),
                        SizedBox(height: 3,),
                        Text("Measurement Date : ${model.measurementDate}",style: poppinsStyle(fontSize: 15,color: DynamicColors.primaryColor), ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider(thickness: 2,color: DynamicColors.primaryColor,),
              SizedBox(height: 1,),
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("10",style: poppinsStyle(fontSize: 18,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),
                        Spacer(),
                        Text("Hours",style: poppinsStyle(fontSize: 11,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),

                      ],
                    ),
                    Spacer(),
                    VerticalDivider(
                      color: DynamicColors.primaryColor,
                        thickness: 1,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("15",style: poppinsStyle(fontSize: 18,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),
                        Spacer(),
                        Text("Minutes",style: poppinsStyle(fontSize: 11,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),

                      ],
                    ),
                    Spacer(),
                    VerticalDivider(
                      color: DynamicColors.primaryColor,
                      thickness: 1,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("34",style: poppinsStyle(fontSize: 18,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),
                        Spacer(),
                        Text("Seconds",style: poppinsStyle(fontSize: 11,color: DynamicColors.primaryColor,fontWeight: FontWeight.bold), ),

                      ],
                    ),
                    Spacer(),

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height/1.7,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/map.jpeg",fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: kToolbarHeight - 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(Icons.call,color: DynamicColors.primaryColor,),
                      Spacer(),
                      VerticalDivider(
                        color: DynamicColors.primaryColor,
                        thickness: 1,
                      ),
                      Spacer(),
                      Icon(Icons.message,color: DynamicColors.primaryColor,),
                      Spacer(),
                      VerticalDivider(
                        color: DynamicColors.primaryColor,
                        thickness: 1,
                      ),
                      Spacer(),
                      Icon(Icons.remove_shopping_cart,color: DynamicColors.primaryColor,),
                      Spacer(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),);
  }
}
