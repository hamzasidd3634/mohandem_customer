import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
      required this.body,
      this.title,
      this.leading,
      this.isDivider = false,
      this.action,
      this.backgroundColor})
      : super(key: key);

  final String? title;
  final Color? backgroundColor;
  final bool? isDivider;
  final Widget? leading;
  final Widget? action;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? DynamicColors.whiteColor,
      body: Stack(
        children: [
          SizedBox(
              height: title == null
                  ? kToolbarHeight
                  : (kToolbarHeight * 2) - 20,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                            child: leading ??InkWell(
                              child:
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color: DynamicColors.primaryColor,
                              ), onTap: () { Get.back(); },
                            ),
                        ),

                        Align(
                          alignment: Alignment.center,
                          child:  Image.asset(
                            "assets/appBarLogo.png",
                            color: DynamicColors.primaryColor,
                            height: 40,
                          ),
                        ),
                    Align(
                      alignment: Alignment.centerRight,
                       child: action ??
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.transparent,
                            ),
                    )
                      ],
                    ),
                  ),
                  title == null
                      ? isDivider == true?Divider() :SizedBox.shrink()
                      : Column(
                          children: [
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              title!,
                              style: poppinsBold(
                                fontWeight: FontWeight.bold,fontSize: 20,
                                  color: DynamicColors.primaryColor),
                            ),
                            SizedBox(
                              height: 6,
                            )
                          ],
                        )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(
                top: title == null
                    ? kToolbarHeight - 10
                    : (kToolbarHeight * 2) - 20),
            child: body,
          )
        ],
      ),
    );
  }
}
