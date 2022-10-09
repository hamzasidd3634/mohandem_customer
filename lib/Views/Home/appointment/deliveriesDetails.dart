import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/customButton.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/appointmentModel.dart';
import 'package:ndialog/ndialog.dart';

class DeliveriesDetails extends StatelessWidget {
  DeliveriesDetails({Key? key}) : super(key: key);

  AppointmentModel appointmentModel = Get.arguments["list"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: DynamicColors.blackColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            "History Details",
            style: poppinsLightStyle(color: DynamicColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                detailWidget(context),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/map.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  height: kToolbarHeight,
                ),
                CustomButton(
                  text: "Change Status",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: "View Measurement",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: "Print",
                    onTap: () async {
                      await NAlertDialog(
                        dialogStyle: DialogStyle(titleDivider: true),
                        title: Text("Measurement"),
                        content:
                            Text("Do you want to save or print measurements"),
                        actions: <Widget>[
                          TextButton(
                              child: Text("Save"),
                              onPressed: () {
                                Get.back();
                              }),
                          TextButton(
                              child: Text("Print"),
                              onPressed: () {
                                Get.back();
                              }),
                        ],
                      ).show(context);
                    }),
              ],
            ),
          ),
        ));
  }

  SizedBox detailWidget(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tiles(context, "Name", appointmentModel.name!),
              SizedBox(
                height: 10,
              ),
              tiles(context, "Phone", appointmentModel.phone!),
              SizedBox(
                height: 10,
              ),
              tiles(context, "Order Date", appointmentModel.orderDate!),
              SizedBox(
                height: 10,
              ),
              tiles(context, "Appointment Time", appointmentModel.time!),
              SizedBox(
                height: 10,
              ),
              tiles(context, "Start Time", appointmentModel.startTime!),
              SizedBox(
                height: 10,
              ),
              tiles(context, "End Time", appointmentModel.endTime!),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tiles(BuildContext context, name, title) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "$name: ",
        style: poppinsLightStyle(
            color: DynamicColors.blackColor,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
      TextSpan(
        text: title,
        style: poppinsLightStyle(
            color: DynamicColors.blackColor,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
    ]));
  }
}
