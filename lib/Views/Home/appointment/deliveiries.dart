import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';

class Deliveries extends StatelessWidget {
  const Deliveries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DynamicColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage("assets/guy.jpg"),
          ),
        ),
        centerTitle: true,
        title: Text(
          "History",
          style: poppinsLightStyle(color: DynamicColors.blackColor),
        ),
      ),
      body: GetBuilder<HomePageController>(builder: (controller) {
        return Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         controller.page = 0;
            //         controller.update();
            //       },
            //       child: ClipPath(
            //         clipper: LeftButtonShape(),
            //         child: Container(
            //             height: 40,
            //             alignment: Alignment.centerLeft,
            //             decoration: BoxDecoration(
            //               color: controller.page == 0
            //                   ? DynamicColors.primaryColor
            //                   : DynamicColors.primaryColor.withOpacity(.1),
            //               gradient: controller.page == 0
            //                   ? LinearGradient(colors: [
            //                       DynamicColors.primaryColor,
            //                       DynamicColors.primaryColor.withOpacity(.1),
            //                     ])
            //                   : null,
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //             padding: EdgeInsets.symmetric(horizontal: 40),
            //             child: FittedBox(
            //                 child: Text(
            //               "New",
            //               style: poppinsLightStyle(
            //                   color: controller.page == 0
            //                       ? DynamicColors.whiteColor
            //                       : DynamicColors.primaryColor,
            //                   fontSize: 12),
            //             ))),
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         controller.page = 1;
            //         controller.update();
            //       },
            //       child: ClipPath(
            //         clipper: RightButtonShape(),
            //         child: Container(
            //             height: 40,
            //             alignment: Alignment.centerRight,
            //             decoration: BoxDecoration(
            //               color: controller.page == 1
            //                   ? DynamicColors.primaryColor
            //                   : DynamicColors.primaryColor.withOpacity(.1),
            //               gradient: controller.page == 1
            //                   ? LinearGradient(colors: [
            //                       DynamicColors.primaryColor,
            //                       DynamicColors.primaryColor.withOpacity(.1),
            //                     ])
            //                   : null,
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //             padding: EdgeInsets.symmetric(horizontal: 40),
            //             child: FittedBox(
            //                 child: Text(
            //               "Active",
            //               style: poppinsLightStyle(
            //                   color: controller.page == 1
            //                       ? DynamicColors.whiteColor
            //                       : DynamicColors.primaryColor,
            //                   fontSize: 12),
            //             ))),
            //       ),
            //     ),
            //   ],
            // ),
            // Expanded(
            //   child: IndexedStack(
            //     index: controller.page,
            //     children: [
            //       ListView.builder(
            //           itemCount: controller.deliveriesList.length,
            //           shrinkWrap: true,
            //           itemBuilder: (context, index) {
            //             return ListTile(
            //               onTap: () {
            //                 Get.toNamed(Routes.deliveriesDetails, arguments: {
            //                   "list": controller.deliveriesList[index]
            //                 });
            //               },
            //               leading: CircleAvatar(
            //                 radius: 20,
            //                 backgroundImage: NetworkImage(
            //                     controller.deliveriesList[index].image!),
            //               ),
            //               title: Text(
            //                 controller.deliveriesList[index].name!,
            //                 style: poppinsLightStyle(),
            //               ),
            //               trailing: Text(
            //                 controller.deliveriesList[index].time!,
            //                 style: poppinsLightStyle(fontSize: 12),
            //               ),
            //             );
            //           }),
            //       ListView.builder(
            //           itemCount: controller.deliveriesListPrev.length,
            //           shrinkWrap: true,
            //           itemBuilder: (context, index) {
            //             return ListTile(
            //               onTap: () {
            //                 Get.toNamed(Routes.deliveriesDetails, arguments: {
            //                   "list": controller.deliveriesListPrev[index]
            //                 });
            //               },
            //               leading: CircleAvatar(
            //                 radius: 20,
            //                 backgroundImage: NetworkImage(
            //                     controller.deliveriesListPrev[index].image!),
            //               ),
            //               title: Text(
            //                 controller.deliveriesListPrev[index].name!,
            //                 style: poppinsLightStyle(),
            //               ),
            //               trailing: Text(
            //                 controller.deliveriesListPrev[index].time!,
            //                 style: poppinsLightStyle(fontSize: 12),
            //               ),
            //             );
            //           }),
            //     ],
            //   ),
            // )

            ListView.builder(
                itemCount: controller.deliveriesList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Get.toNamed(Routes.deliveriesDetails, arguments: {
                        "list": controller.deliveriesList[index]
                      });
                    },
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(controller.deliveriesList[index].image!),
                    ),
                    title: Text(
                      controller.deliveriesList[index].name!,
                      style: poppinsLightStyle(),
                    ),
                    trailing: Text(
                      controller.deliveriesList[index].time!,
                      style: poppinsLightStyle(fontSize: 12),
                    ),
                  );
                }),
          ],
        );
      }),
    );
  }
}
