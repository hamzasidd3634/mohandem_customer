part of 'app_pages.dart';

abstract class Routes {

  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const signUp = _Paths.signUp;
  static const forgotPassword = _Paths.forgotPassword;
  static const homePage = _Paths.homePage;
  static const orderList = _Paths.orderList;
  static const orderDetails = _Paths.orderDetails;
  static const orderCalendar = _Paths.orderCalendar;
  static const orderLocation = _Paths.orderLocation;
  static const completePlacedOrder = _Paths.completePlacedOrder;
  static const appointmentDetails = _Paths.appointmentDetails;
  static const pricesDetails = _Paths.pricesDetails;
  static const about = _Paths.about;
  static const comments = _Paths.comments;
  static const ratings = _Paths.ratings;

}

abstract class _Paths {
  static const splash = '/splash';
  static const login = '/login';
  static const signUp = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const homePage = '/homePage';
  static const orderList = '/orderList';
  static const orderDetails = '/orderDetails';
  static const orderCalendar = '/orderCalendar';
  static const orderLocation = '/orderLocation';
  static const completePlacedOrder = '/completePlacedOrder';
  static const appointmentDetails = '/appointmentDetails';
  static const pricesDetails = '/pricesDetails';
  static const about = '/about';
  static const comments = '/comments';
  static const ratings = '/ratings';

}
