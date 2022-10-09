import 'package:get/get.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
