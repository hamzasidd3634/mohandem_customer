import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';

import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {Key? key,
      required this.body,
      this.title,
      this.leading,
      this.isDivider = false,
      this.noAppBar = false,
      this.fromMain = true,
      this.centerWidget = true,
      this.action,
      this.floatingActionButton,
      this.backgroundColor})
      : super(key: key);

  final String? title;
  final bool centerWidget;
  final bool fromMain;
  final bool noAppBar;
  final Color? backgroundColor;
  final bool? isDivider;
  final Widget? leading;
  final Widget? action;
  final Widget body;
  final Widget? floatingActionButton;
  HomePageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(

        child: Scaffold(
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          backgroundColor: backgroundColor ?? DynamicColors.whiteColor,
        //   bottomNavigationBar: fromMain == false?SizedBox.shrink():  Container(
        //     color: Colors.white,
        //   height: kToolbarHeight -10,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 10,bottom: 10),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         LikeButton(
        //           onTap: (a) {
        //             controller.index = 0;
        //             controller.update();
        //             return Future.value(true);
        //           },
        //
        //           circleColor: CircleColor(
        //               start: DynamicColors.primaryColor,
        //               end: DynamicColors.primaryColor.withOpacity(0.5)),
        //           bubblesColor: BubblesColor(
        //               dotPrimaryColor: DynamicColors.primaryColor,
        //               dotSecondaryColor:
        //               DynamicColors.primaryColor.withOpacity(0.5)),
        //           size: width / 5.3,
        //           likeBuilder: (bool isLiked) {
        //             return  Icon(
        //               Icons.home_outlined,
        //               size: 30,
        //               color: controller.index == 0
        //                   ? DynamicColors.primaryColor
        //                   : Colors.grey,
        //             );
        //           },
        //           isLiked: controller.index == 0 ? true : false,
        //           // likeCount: likeCount,
        //         ),
        //         LikeButton(
        //           onTap: (a) {
        //             controller.index = 1;
        //             controller.update();
        //             return Future.value(true);
        //           },
        //           size: width / 5.3,
        //           circleColor: CircleColor(
        //               start: DynamicColors.primaryColor,
        //               end: DynamicColors.primaryColor.withOpacity(0.5)),
        //           bubblesColor: BubblesColor(
        //               dotPrimaryColor: DynamicColors.primaryColor,
        //               dotSecondaryColor:
        //               DynamicColors.primaryColor.withOpacity(0.5)),
        //           likeBuilder: (bool isLiked) {
        //             return ImageIcon(
        //               AssetImage("assets/price.png",),
        //               size: 30,
        //
        //               color: controller.index == 1
        //                   ? DynamicColors.primaryColor
        //                   : Colors.grey,
        //             );
        //           },
        //           isLiked: controller.index == 1 ? true : false,
        //           // likeCount: likeCount,
        //         ),
        //         LikeButton(
        //           onTap: (a) {
        //             controller.index = 2;
        //             controller.update();
        //             return Future.value(true);
        //           },
        //           circleColor: CircleColor(
        //               start: DynamicColors.primaryColor,
        //               end: DynamicColors.primaryColor.withOpacity(0.5)),
        //           bubblesColor: BubblesColor(
        //               dotPrimaryColor: DynamicColors.primaryColor,
        //               dotSecondaryColor:
        //               DynamicColors.primaryColor.withOpacity(0.5)),
        //           size: width / 5.3,
        //           likeBuilder: (bool isLiked) {
        //             return Icon(
        //               Icons.notifications,
        //               size: 30,
        //               // height: kToolbarHeight - 30,
        //               // width: 40,
        //               color: controller.index == 2
        //                   ? DynamicColors.primaryColor
        //                   : Colors.grey,
        //             );
        //           },
        //           isLiked: controller.index == 2 ? true : false,
        //           // likeCount: likeCount,
        //         ),
        //         LikeButton(
        //           onTap: (a) {
        //             controller.index = 3;
        //             controller.update();
        //             return Future.value(true);
        //           },
        //           circleColor: CircleColor(
        //               start: DynamicColors.primaryColor,
        //               end: DynamicColors.primaryColor.withOpacity(0.5)),
        //           bubblesColor: BubblesColor(
        //               dotPrimaryColor: DynamicColors.primaryColor,
        //               dotSecondaryColor:
        //               DynamicColors.primaryColor.withOpacity(0.5)),
        //           size: width / 5.3,
        //           likeBuilder: (bool isLiked) {
        //             return ImageIcon(
        //               AssetImage("assets/myOrder.png",),
        //               size: 30,
        //               color: controller.index == 3
        //                   ? DynamicColors.primaryColor
        //                   : Colors.grey,
        //             );
        //           },
        //           isLiked: controller.index == 3 ? true : false,
        //           // likeCount: likeCount,
        //         ),
        //         LikeButton(
        //           onTap: (a) {
        //             controller.index = 4;
        //             controller.update();
        //             return Future.value(true);
        //           },
        //           circleColor: CircleColor(
        //               start: DynamicColors.primaryColor,
        //               end: DynamicColors.primaryColor.withOpacity(0.5)),
        //           bubblesColor: BubblesColor(
        //               dotPrimaryColor: DynamicColors.primaryColor,
        //               dotSecondaryColor:
        //               DynamicColors.primaryColor.withOpacity(0.5)),
        //           size: width / 5.3,
        //           likeBuilder: (bool isLiked) {
        //             return ImageIcon(
        //               AssetImage("assets/cart.png"),
        //               size: 30,
        //               color: controller.index == 4
        //                   ? DynamicColors.primaryColor
        //                   : Colors.grey,
        //             );
        //           },
        //           isLiked: controller.index == 4 ? true : false,
        //           // likeCount: likeCount,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
          body: Stack(
            children: [
              noAppBar == true?SizedBox.shrink(): SizedBox(
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: leading ??InkWell(
                                    child:
                                    Icon(
                                      Icons.arrow_back_ios_outlined,
                                      color: DynamicColors.primaryColor,
                                    ), onTap: () { Get.back(); },
                                  ),
                                ),
                            ),

                            centerWidget == false? Container(): Align(
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
              noAppBar == true?body:  Padding(
                padding: EdgeInsets.only(
                    top: title == null
                        ? kToolbarHeight - 10
                        : (kToolbarHeight * 2) - 20),
                child: body,
              )
            ],
          ),
        ),
      ),
    );
  }
}


class CustomAppBarNoController extends StatelessWidget {
  CustomAppBarNoController(
      {Key? key,
      required this.body,
      this.title,
      this.leading,
      this.isDivider = false,
      this.noAppBar = false,
      this.fromMain = true,
      this.centerWidget = true,
      this.action,
      this.floatingActionButton,
      this.backgroundColor})
      : super(key: key);

  final String? title;
  final bool centerWidget;
  final bool fromMain;
  final bool noAppBar;
  final Color? backgroundColor;
  final bool? isDivider;
  final Widget? leading;
  final Widget? action;
  final Widget body;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(

        child: Scaffold(
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          backgroundColor: backgroundColor ?? DynamicColors.whiteColor,
          body: Stack(
            children: [
              noAppBar == true?SizedBox.shrink(): SizedBox(
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: leading ??InkWell(
                                    child:
                                    Icon(
                                      Icons.arrow_back_ios_outlined,
                                      color: DynamicColors.primaryColor,
                                    ), onTap: () { Get.back(); },
                                  ),
                                ),
                            ),

                            centerWidget == false? Container(): Align(
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
              noAppBar == true?body:  Padding(
                padding: EdgeInsets.only(
                    top: title == null
                        ? kToolbarHeight - 10
                        : (kToolbarHeight * 2) - 20),
                child: body,
              )
            ],
          ),
        ),
      ),
    );
  }
}
