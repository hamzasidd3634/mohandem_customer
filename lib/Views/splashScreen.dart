import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.toNamed(Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.white,
        child: Center(
          child: Image.asset("assets/logo.png",height: MediaQuery.of(context).size.height/4,),
        ),
      ),
    );
  }
}
