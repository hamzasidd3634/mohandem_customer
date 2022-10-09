import 'package:get/get.dart';
import 'package:mohandem_customer/Views/Auth/forgotPassword.dart';
import 'package:mohandem_customer/Views/Auth/login.dart';
import 'package:mohandem_customer/Views/Auth/signup.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeBinding.dart';
import 'package:mohandem_customer/Views/Home/appointment/appointmentDetails.dart';
import 'package:mohandem_customer/Views/Home/appointment/deliveriesDetails.dart';
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
      name: _Paths.deliveriesDetails,
      page: () => DeliveriesDetails(),
    ),
    GetPage(
      name: _Paths.homePage,
      page: () => HomePage(),
      binding: HomePageBinding()

    ),

  ];
}
