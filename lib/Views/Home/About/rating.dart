import 'package:flutter/material.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Ratings extends StatelessWidget {
  const Ratings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(body: Center(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        RatingBarIndicator(
          rating: 4,
          unratedColor: DynamicColors.primaryColor,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: DynamicColors.primaryColor,
          ),
          itemCount: 5,
          itemSize: 50.0,
          direction: Axis.horizontal,
        ),
        SizedBox(height: 10,),
          CustomButton(
            text: "Rate",
            textStyle: poppinsStyle(color: DynamicColors.primaryColor),
            onTap: (){
            },
          ),
      ],),
    ),));
  }
}
