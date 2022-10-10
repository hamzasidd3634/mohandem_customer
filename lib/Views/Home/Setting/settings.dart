import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/customTextField.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatelessWidget {
   Settings({Key? key}) : super(key: key);
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      fromMain: false,
      leading: Container(),
        isDivider: true,
        action: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text("Logout",style: poppinsStyle(color: DynamicColors.primaryColor),),
        ),
      body: GetBuilder<HomePageController>(builder: (controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                SizedBox(
                  height: 100,
                  child: ClipPolygon(
                    sides: 6,
                    borderRadius: 5.0,     // Defaults to 0.0 degrees
                    rotate: 90.0,          // Defaults to 0.0 degrees
                    boxShadows: [
                      PolygonBoxShadow(color: Colors.black, elevation: 1.0),
                      PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                    ],
                    child: Image.asset("assets/guy.jpg"),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Aizaz Ahmed",style: poppinsStyle(),),

                SizedBox(height: 10 ,),
                CustomTextField(controller: name,hintText: "Name",suffix: Icon(Iconic.pencil_alt,color: DynamicColors.blackColor,),isHintLabel: true,),
                SizedBox(height: 10,),
                CustomTextField(controller: email,hintText: "Email",isEmail: true,suffix: Icon(Iconic.pencil_alt,color: DynamicColors.blackColor,),isHintLabel: true),
                SizedBox(height: 20,),
                CustomTextField(controller: phone,hintText: "Phone",textInputType: TextInputType.phone,suffix: Icon(Iconic.pencil_alt,color: DynamicColors.blackColor,),isHintLabel: true),
                SizedBox(height: 20,),
                CustomTextField(controller: address,hintText: "Address",suffix: Icon(Iconic.pencil_alt,color: DynamicColors.blackColor,),isHintLabel: true),
                SizedBox(height: 20,),
                CustomButton(
                  text: "Change Language",
                  textStyle: poppinsStyle(color: DynamicColors.primaryColor),
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return CupertinoAlertDialog(
                        title:  Text("Language"),
                        content:  Text("تغير اللغة"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            isDefaultAction: true,
                            child: Text("Yes"),
                            onPressed: (){
                              Get.back();
                            },
                          ),
                          CupertinoDialogAction(
                            isDefaultAction: true,
                            child: Text("No"),
                            onPressed: (){
                              Get.back();
                            },
                          )
                        ],
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
