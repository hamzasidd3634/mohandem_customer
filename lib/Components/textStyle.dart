import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mohandem_customer/Components/color.dart';

montserratStyle({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'montserrat-bold',
    letterSpacing: latterSpacing ?? 1,
  );
}

poppinsLightStyle(
    {double? fontSize, color, fontWeight, double? latterSpacing, fontStyle}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    fontStyle: fontStyle ?? FontStyle.normal,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'poppinslight',
    letterSpacing: latterSpacing ?? 1,
  );
}

poppinsStyle(
    {double? fontSize,
      color,
      fontWeight,
      double? latterSpacing,
      bool shadow = false}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'poppins',
    letterSpacing: latterSpacing ?? 1,
    shadows: [
      shadow == true
          ? Shadow(
        color: Colors.blue.withOpacity(1.0),
        offset: Offset(1, 2),
        blurRadius: 0.0,
      )
          : Shadow(
        // color: Colors.blue.withOpacity(1.0),
        // offset: Offset(1, 2),
        // blurRadius: 0.0,
      ),
    ],
  );
}

poppinsBold(
    {double? fontSize,
      color,
      fontWeight,
      double? latterSpacing,
      bool shadow = false}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'poppins-Bold',
    letterSpacing: latterSpacing ?? 1,
    shadows: [
      shadow == true
          ? Shadow(
        color: Colors.blue.withOpacity(1.0),
        offset: Offset(1, 2),
        blurRadius: 0.0,
      )
          : Shadow(
        // color: Colors.blue.withOpacity(1.0),
        // offset: Offset(1, 2),
        // blurRadius: 0.0,
      ),
    ],
  );
}

bahnschriftStyle(
    {double? fontSize,
      color,
      fontWeight,
      double? latterSpacing,
      underline = false}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'Bahnschrift',
    letterSpacing: latterSpacing ?? 1,
    decoration: underline ? TextDecoration.underline : TextDecoration.none,
  );
}

redhatMedium({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'redhat-medium',
    letterSpacing: latterSpacing ?? 1,
  );
}

poppinSemi({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'poppinsemi',
    letterSpacing: latterSpacing ?? 1,
  );
}

ralewayRegular({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'ralewayregular',
    letterSpacing: latterSpacing ?? 1,
  );
}

nunitoBold({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'nunito-bold',
    letterSpacing: latterSpacing ?? 1,
  );
}

nunitoSemiBold({double? fontSize, color, fontWeight, double? latterSpacing}) {
  return TextStyle(
    fontSize: fontSize ?? 18,
    color: color ?? DynamicColors.blackColor,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: 'nunito-semi',
    letterSpacing: latterSpacing ?? 1,
  );
}

autoSizeTextWidget(
    {String? text, double? fontSize, double? maxFontSize, otherStyling}) {
  return AutoSizeText(
    text!,
    minFontSize: fontSize ?? 25,
    maxFontSize: maxFontSize ?? 15,
    style: otherStyling ?? poppinsStyle(),
  );
}

String testImage =
    'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg';
String formatHHMMSS(int seconds) {
  int hours = (seconds / 3600).truncate();
  seconds = (seconds % 3600).truncate();
  int minutes = (seconds / 60).truncate();

  String hoursStr = (hours).toString().padLeft(2, '0');
  String minutesStr = (minutes).toString().padLeft(2, '0');
  String secondsStr = (seconds % 60).toString().padLeft(2, '0');

  if (hours == 0) {
    return "$minutesStr:$secondsStr";
  }

  return "$hoursStr:$minutesStr:$secondsStr";
}
