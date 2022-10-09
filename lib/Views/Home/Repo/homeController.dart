
import 'package:get/get.dart';
import 'package:mohandem_customer/Model/appointmentModel.dart';

class HomePageController extends GetxController{

  int page = 0;
  int index = 0;
  List<AppointmentModel> appointmentList = [
    AppointmentModel(
        name: "Mahboob Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Aizaz Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Shazar Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
  ];

  List<AppointmentModel> appointmentListPrev = [
    AppointmentModel(
        name: "Hamza Siddiqui",
        time: "09:15 pm",
        startTime: "01:15 pm",
        phone: "+14844541234",
        endTime: "11:15 am",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Deck Bro",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Haseeb Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        phone: "+14844541234",
        endTime: "11:15 am",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
  ];
  List<AppointmentModel> deliveriesList = [
    AppointmentModel(
        name: "Javed Ahsaan",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844554234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Hubaib Khan",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Salman Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
  ];

  List<AppointmentModel> deliveriesListPrev = [
    AppointmentModel(
        name: "Saad Ali",
        time: "09:15 pm",
        startTime: "01:15 pm",
        phone: "+14844541234",
        endTime: "11:15 am",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Babar Azam",
        time: "09:15 pm",
        startTime: "01:15 pm",
        endTime: "11:15 am",
        phone: "+14844541234",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
    AppointmentModel(
        name: "Rizwan Ahmed",
        time: "09:15 pm",
        startTime: "01:15 pm",
        phone: "+14844541234",
        endTime: "11:15 am",
        orderDate: "20222-09-08",
        image:
        "https://files.oyebesmartest.com/uploads/preview/insta-94245zr.jpeg"),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}