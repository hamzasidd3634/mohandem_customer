import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';
import 'package:mohandem_customer/Model/calendarModel.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeController.dart';
import 'package:mohandem_customer/Views/customAPpBar.dart';
import 'package:table_calendar/table_calendar.dart';

class OrderCalendar extends StatelessWidget {
  OrderCalendar({Key? key}) : super(key: key);

  List<String> list = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "June",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  RxInt selectedCount = (-1).obs;
  String? date;
  List<CalendarModel> model = [
    CalendarModel(
        from: "09:00 AM", to: "11:00 AM", isAvailable: true, isSelected: false),
    CalendarModel(
        from: "11:00 AM",
        to: "01:00 PM",
        isAvailable: false,
        isSelected: false),
    CalendarModel(
        from: "01:00 PM",
        to: "03:00 PM",
        isAvailable: true,
        isSelected: false),
    CalendarModel(
        from: "03:00 PM", to: "05:00 PM", isAvailable: false, isSelected: false),
    CalendarModel(
        from: "05:00 PM", to: "07:00 PM", isAvailable: true, isSelected: false),
    CalendarModel(
        from: "07:00 PM", to: "09:00 PM", isAvailable: true, isSelected: false),
  ];

  HomePageController controller = Get.find();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final kToday = DateTime.now();
  final kFirstDay = DateTime(
      DateTime
          .now()
          .year, DateTime
      .now()
      .month - 3, DateTime
      .now()
      .day);
  final kLastDay = DateTime(
      DateTime
          .now()
          .year, DateTime
      .now()
      .month + 3, DateTime
      .now()
      .day);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        floatingActionButton:FloatingActionButton(
          onPressed: () {
           if(selectedCount.value != -1 && date != null) {
            Get.toNamed(Routes.orderLocation,
                arguments: {"data": model[selectedCount.value],"date":date});
          }else{
             showDialog(context: context, builder: (context){
               return CupertinoAlertDialog(
                 title:  Text("Please select the date, time and"),
                 content:  Text("location for the tailor to come and take your measurements"),
                 actions: <Widget>[
                   CupertinoDialogAction(
                     isDefaultAction: true,
                     child: Text("OK"),
                     onPressed: (){
                       Get.back();
                     },
                   ),

                 ],
               );
             });
           }
        },
          backgroundColor: DynamicColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: DynamicColors.primaryColor)
          ),
          child: Icon(Icons.check,color: DynamicColors.primaryColor,),
        ),
      body: GetBuilder<HomePageController>(builder: (coontroller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                firstDay: kFirstDay,
                lastDay: kLastDay,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle:
                    poppinsStyle(color: DynamicColors.primaryColor)),
                focusedDay: _focusedDay,
                calendarStyle: CalendarStyle(
                    todayDecoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                    selectedDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: DynamicColors.primaryColor)),
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.

                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day

                    _selectedDay = selectedDay;
                    date = "${list[selectedDay.month -1]} ${selectedDay.day}, ${selectedDay.year}";
                    _focusedDay = focusedDay;
                    controller.update();
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format

                    _calendarFormat = format;
                    controller.update();
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: DynamicColors.primaryColor,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: GridView.builder(
                    itemCount: model.length,
                    physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,crossAxisSpacing: 50,mainAxisExtent: 100,mainAxisSpacing: 50),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          if(model[index].isAvailable == true){
                            selectedCount.value = index;
                          }
                        },
                        child: Obx(() {
                          return Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                color: index == selectedCount.value
                                    ? DynamicColors.primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: model[index].isAvailable == false
                                        ? Colors.red
                                        : DynamicColors.blackColor)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(model[index].from!,
                                  style: poppinsStyle(fontSize: 12,color: index == selectedCount.value
                                      ? DynamicColors.whiteColor
                                      : DynamicColors.blackColor),),
                                Text("to", style: poppinsStyle(fontSize: 12,color: index == selectedCount.value
                                    ? DynamicColors.whiteColor
                                    : DynamicColors.blackColor),),
                                Text(model[index].to!,
                                  style: poppinsStyle(fontSize: 12,color: index == selectedCount.value
                                      ? DynamicColors.whiteColor
                                      : DynamicColors.blackColor),),
                              ],
                            ),
                          );
                        }),
                      );
                    }),
              )
            ],
          ),
        );
      }),
    );
  }
}
