import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/pricesModel.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class PricesDetails extends StatelessWidget {
  PricesDetails({Key? key}) : super(key: key);

  PricesModel priceModel = Get.arguments["list"];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(

      body: GetBuilder<HomePageController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Image.asset(priceModel.image!,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/4,fit: BoxFit.fill,),
              SizedBox(height: 20,),
              Text(priceModel.name!,style: poppinsBold(fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 10,),
              Text("Price : ${priceModel.price}",style: poppinsBold(fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 10,),
              Text("Quantity : ${priceModel.quantity}",style: poppinsBold(fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 10,),
              Text(priceModel.notes!,style: poppinsBold(fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: kToolbarHeight,),
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
              )
            ],
          ),
        );
      }),
    );
  }
}
