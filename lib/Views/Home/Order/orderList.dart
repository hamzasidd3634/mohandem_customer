import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/ordersModel.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class OrderList extends StatelessWidget {
  OrderList({Key? key,this.fromMain = false}) : super(key: key);
  bool fromMain;
  List<OrdersModel> model = [
    OrdersModel(orderID: "12",
        orderDate: "23 Aug 2022 05:48:45",
      measurementDate: "25 Aug 2022 05:48:45",
    ),
    OrdersModel(orderID: "13",
      orderDate: "24 Aug 2022 05:48:45",
      measurementDate: "26 Aug 2022 05:48:45",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      // noAppBar: noAppbar,
      fromMain: !fromMain,
      title: "My Orders",
      body: GetBuilder<HomePageController>(builder: (controller) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: model.length,

            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.orderDetails,arguments: {"data":model[index]});
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      SizedBox(
                        // height: kToolbarHeight,
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
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
                                  Text("Order ID : ${model[index].orderID}",style: poppinsStyle(fontSize: 15), ),
                                  SizedBox(height: 3,),
                                  Text("Order Date : ${model[index].orderDate}",style: poppinsStyle(fontSize: 15),overflow: TextOverflow.ellipsis ),
                                ],
                              )
                            ],
                          ),
                      ),
                      SizedBox(height: 10,),
                      Divider()
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
