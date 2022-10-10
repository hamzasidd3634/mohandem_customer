import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Views/Home/Order/orderList.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/Home/Setting/settings.dart';
import 'package:mohandem_customer/Views/Home/appointment/prices.dart';
import 'package:mohandem_customer/Views/Home/home.dart';
import 'package:mohandem_customer/Views/Home/notification.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomePageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
          backgroundColor: DynamicColors.whiteColor,
          body: IndexedStack(
            index: controller.index,
            children: [
              Dashboard(),
              Prices(),
              Notifications(),
              OrderList(),
              Settings(),
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: kToolbarHeight -10,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LikeButton(
                    onTap: (a) {
                      controller.index = 0;
                      controller.update();
                      return Future.value(true);
                    },

                    circleColor: CircleColor(
                        start: DynamicColors.primaryColor,
                        end: DynamicColors.primaryColor.withOpacity(0.5)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: DynamicColors.primaryColor,
                        dotSecondaryColor:
                            DynamicColors.primaryColor.withOpacity(0.5)),
                    size: width / 5.3,
                    likeBuilder: (bool isLiked) {
                      return  Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: controller.index == 0
                            ? DynamicColors.primaryColor
                            : Colors.grey,
                      );
                    },
                    isLiked: controller.index == 0 ? true : false,
                    // likeCount: likeCount,
                  ),
                  LikeButton(
                    onTap: (a) {
                      controller.index = 1;
                      controller.update();
                      return Future.value(true);
                    },
                    size: width / 5.3,
                    circleColor: CircleColor(
                        start: DynamicColors.primaryColor,
                        end: DynamicColors.primaryColor.withOpacity(0.5)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: DynamicColors.primaryColor,
                        dotSecondaryColor:
                            DynamicColors.primaryColor.withOpacity(0.5)),
                    likeBuilder: (bool isLiked) {
                      return ImageIcon(
                        AssetImage("assets/priceBottom.png",),
                        size: 30,

                        color: controller.index == 1
                            ? DynamicColors.primaryColor
                            : Colors.grey,
                      );
                    },
                    isLiked: controller.index == 1 ? true : false,
                    // likeCount: likeCount,
                  ),
                  LikeButton(
                    onTap: (a) {
                      controller.index = 2;
                      controller.update();
                      return Future.value(true);
                    },
                    circleColor: CircleColor(
                        start: DynamicColors.primaryColor,
                        end: DynamicColors.primaryColor.withOpacity(0.5)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: DynamicColors.primaryColor,
                        dotSecondaryColor:
                            DynamicColors.primaryColor.withOpacity(0.5)),
                    size: width / 5.3,
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.notifications,
                        size: 30,
                        // height: kToolbarHeight - 30,
                        // width: 40,
                        color: controller.index == 2
                            ? DynamicColors.primaryColor
                            : Colors.grey,
                      );
                    },
                    isLiked: controller.index == 2 ? true : false,
                    // likeCount: likeCount,
                  ),
                  LikeButton(
                    onTap: (a) {
                      controller.index = 3;
                      controller.update();
                      return Future.value(true);
                    },
                    circleColor: CircleColor(
                        start: DynamicColors.primaryColor,
                        end: DynamicColors.primaryColor.withOpacity(0.5)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: DynamicColors.primaryColor,
                        dotSecondaryColor:
                            DynamicColors.primaryColor.withOpacity(0.5)),
                    size: width / 5.3,
                    likeBuilder: (bool isLiked) {
                      return ImageIcon(
                        AssetImage("assets/orderBottom.png",),
                        size: 30,
                        color: controller.index == 3
                            ? DynamicColors.primaryColor
                            : Colors.grey,
                      );
                    },
                    isLiked: controller.index == 3 ? true : false,
                    // likeCount: likeCount,
                  ),
                  LikeButton(
                    onTap: (a) {
                      controller.index = 4;
                      controller.update();
                      return Future.value(true);
                    },
                    circleColor: CircleColor(
                        start: DynamicColors.primaryColor,
                        end: DynamicColors.primaryColor.withOpacity(0.5)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: DynamicColors.primaryColor,
                        dotSecondaryColor:
                            DynamicColors.primaryColor.withOpacity(0.5)),
                    size: width / 5.3,
                    likeBuilder: (bool isLiked) {
                      return ImageIcon(
                        AssetImage("assets/profile.png"),
                        size: 30,
                        color: controller.index == 4
                            ? DynamicColors.primaryColor
                            : Colors.grey,
                      );
                    },
                    isLiked: controller.index == 4 ? true : false,
                    // likeCount: likeCount,
                  ),
                ],
              ),
            ),
          )

          // SizedBox(
          //     height: kToolbarHeight,
          //     child: Row(
          //       children: [
          //         Expanded(
          //             child: GestureDetector(
          //               behavior: HitTestBehavior.opaque,
          //               onTap: () {
          //                 controller.index = 0;
          //                 controller.update();
          //               },
          //               child: Container(
          //                 color: controller.index == 0 ? DynamicColors
          //                     .primaryColor : DynamicColors.whiteColor,
          //                 child: Center(
          //                     child: Text(
          //                       "Appointments",
          //                       style: poppinsBold(
          //                           color: controller.index == 1 ? DynamicColors
          //                               .primaryColor : DynamicColors.whiteColor),
          //                     )),
          //               ),
          //             )),
          //         Expanded(
          //             child: GestureDetector(
          //               behavior: HitTestBehavior.opaque,
          //               onTap: () {
          //                 controller.index = 1;
          //                 controller.update();
          //               },
          //               child: Container(
          //                 color: controller.index == 1 ? DynamicColors
          //                     .primaryColor : DynamicColors.whiteColor,
          //                 child: Center(
          //                     child: Text(
          //                       "Deliveries",
          //                       style: poppinsBold(
          //                           color: controller.index == 0 ? DynamicColors
          //                               .primaryColor : DynamicColors.whiteColor),
          //                     )),
          //               ),
          //             )),
          //         Expanded(
          //             child: GestureDetector(
          //               behavior: HitTestBehavior.opaque,
          //               onTap: () {
          //                 controller.index = 1;
          //                 controller.update();
          //               },
          //               child: Container(
          //                 color: controller.index == 1 ? DynamicColors
          //                     .primaryColor : DynamicColors.whiteColor,
          //                 child: Center(
          //                     child: Text(
          //                       "Deliveries",
          //                       style: poppinsBold(
          //                           color: controller.index == 0 ? DynamicColors
          //                               .primaryColor : DynamicColors.whiteColor),
          //                     )),
          //               ),
          //             )),
          //       ],
          //     )),
          );
    });
  }
}
