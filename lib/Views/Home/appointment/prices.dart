import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/pricesModel.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class Prices extends StatelessWidget {
  Prices({Key? key}) : super(key: key);

  List<PricesModel> model = [
    PricesModel(
        image: "assets/product.jpg",
        name: "SHIBIKO - Al Mamlakha",
        price: "320 QR",
        quantity: "1",
        notes: "Fabrics price include tailoring price"),
    PricesModel(
        image: "assets/product.jpg",
        name: "TOYOBO - Al Diwan",
        price: "370 QR",
        quantity: "1",
        notes: "Fabrics price include tailoring price"),
    PricesModel(
        image: "assets/product.jpg",
        name: "TOYOBO - ORYX",
        price: "370 QR",
        quantity: "1",
        notes: "Fabrics price include tailoring price"),
    PricesModel(
        image: "assets/product.jpg",
        name: "SHIBIKO - Royal Classic",
        price: "320 QR",
        quantity: "1",
        notes: "Fabrics price include tailoring price"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      fromMain: false,
      title: "Prices",
      body: GetBuilder<HomePageController>(builder: (controller) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: model.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed(Routes.pricesDetails,arguments: {"list":model[index]});
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(height: 80,width: 120,child: Image.asset(model[index].image!),),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/1.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(model[index].name!,style: poppinsBold(fontSize: 14),),
                                      Spacer(),
                                      Text(model[index].price!,style: poppinsBold( fontSize: 14),),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Quantity : ${model[index].quantity}",style: poppinsBold(fontSize: 14),),
   SizedBox(height: 10,),
                                  Text("Notes : ${model[index].notes}",style: poppinsBold(fontSize: 14),),


                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),

                      ],
                    ),
                  );
                }));
      }),
    );
  }
}
