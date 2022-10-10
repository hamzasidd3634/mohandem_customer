import 'package:get/get.dart';
import 'package:mohandem_customer/Views/Auth/forgotPassword.dart';
import 'package:mohandem_customer/Views/Auth/login.dart';
import 'package:mohandem_customer/Views/Auth/signup.dart';
import 'package:mohandem_customer/Views/Home/About/comments.dart';
import 'package:mohandem_customer/Views/Home/About/rating.dart';
import 'package:mohandem_customer/Views/Home/Order/orderDetails.dart';
import 'package:mohandem_customer/Views/Home/Order/orderList.dart';
import 'package:mohandem_customer/Views/Home/PlaceOrder/completePlacedOrder.dart';
import 'package:mohandem_customer/Views/Home/PlaceOrder/orderCalendar.dart';
import 'package:mohandem_customer/Views/Home/PlaceOrder/orderLocation.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeBinding.dart';
import 'package:mohandem_customer/Views/Home/About/about.dart';
import 'package:mohandem_customer/Views/Home/appointment/appointmentDetails.dart';
import 'package:mohandem_customer/Views/Home/appointment/pricesDetails.dart';
import 'package:mohandem_customer/Views/Home/homePage.dart';
import 'package:mohandem_customer/Views/splashScreen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => Login(),
    ),
    GetPage(
      name: _Paths.signUp,
      page: () => SignUp(),
    ),
    GetPage(
      name: _Paths.forgotPassword,
      page: () => ForgotPassword(),
    ),
    GetPage(
      name: _Paths.appointmentDetails,
      page: () => AppointmentDetails(),
    ),
    GetPage(
      name: _Paths.pricesDetails,
      page: () => PricesDetails(),
    ),
    GetPage(
      name: _Paths.homePage,
      page: () => HomePage(),
      binding: HomePageBinding()

    ),
    GetPage(
      name: _Paths.orderList,
      page: () => OrderList(),

    ),
    GetPage(
      name: _Paths.orderDetails,
      page: () => OrderDetails(),

    ),
    GetPage(
      name: _Paths.orderCalendar,
      page: () => OrderCalendar(),

    ),
    GetPage(
      name: _Paths.orderLocation,
      page: () => OrderLocation(),

    ),
    GetPage(
      name: _Paths.completePlacedOrder,
      page: () => CompletePlacedOrder(),

    ),
    GetPage(
      name: _Paths.about,
      page: () => About(),

    ),
    GetPage(
      name: _Paths.comments,
      page: () => Comments(),

    ),
    GetPage(
      name: _Paths.ratings,
      page: () => Ratings(),

    ),

  ];
}
