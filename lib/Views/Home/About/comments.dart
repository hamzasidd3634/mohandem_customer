import 'package:flutter/material.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
      children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Enter your title here",
            hintStyle: poppinsStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Enter your Message here",
            hintStyle: poppinsStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
            maxLines: 5,
            minLines: null,
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: "Send",
            textStyle: poppinsStyle(color: DynamicColors.primaryColor),
            onTap: () {},
          ),
      ],
    ),
        ));
  }
}
