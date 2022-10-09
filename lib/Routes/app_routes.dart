part of 'app_pages.dart';

abstract class Routes {

  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const signUp = _Paths.signUp;
  static const forgotPassword = _Paths.forgotPassword;
  static const homePage = _Paths.homePage;
  static const appointmentDetails = _Paths.appointmentDetails;
  static const deliveriesDetails = _Paths.deliveriesDetails;

}

abstract class _Paths {
  static const splash = '/splash';
  static const login = '/login';
  static const signUp = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const homePage = '/homePage';
  static const appointmentDetails = '/appointmentDetails';
  static const deliveriesDetails = '/deliveriesDetails';

}
