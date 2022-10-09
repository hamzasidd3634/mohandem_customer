// ignore_for_file: file_names, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';

class CustomButton extends StatelessWidget {
  const   CustomButton(
      {Key? key,
        this.text,
        this.onTap,
        this.height,
        this.width,
        this.contentPadding,
        this.btnColor,
        this.borderColor = Colors.white,
        this.isBorder = false,
        this.boxShadow = false,
        this.textColor,
        this.textAlign = true,
        this.borderRadius,
        this.prefixIcon,
        this.spacer,
        this.textPadding,
        this.textStyle})
      : super(key: key);
  final String? text;
  final GestureTapCallback? onTap;
  final double? width;
  final double? height;
  final EdgeInsets? textPadding;
  final EdgeInsets? contentPadding;
  final Color? btnColor;
  final Color? borderColor;
  final bool? isBorder;
  final BorderRadius? borderRadius;
  final bool? boxShadow;
  final Color? textColor;
  final bool? textAlign;
  final Widget? prefixIcon;
  final Widget? spacer;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final double widths = MediaQuery.of(context).size.width;
    final double heights = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        child: Container(
          width: width ?? widths,
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: contentPadding ?? EdgeInsets.zero,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: boxShadow == false
                ? []
                : [
              BoxShadow(
                color: btnColor != null
                    ? btnColor!.withOpacity(0.5)
                    : DynamicColors.primaryColor.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 15,
              ),
            ],
              borderRadius: borderRadius ?? BorderRadius.circular(10),
            border: Border.all(color: btnColor ?? DynamicColors.primaryColor,)
          ),
          child: prefixIcon != null
              ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefixIcon!,
                spacer ?? Spacer(),
                Text(
                  text ?? '',
                  style: textStyle ??
                     poppinsLightStyle(
                          color: textColor ?? Colors.white,
                          fontSize: widths / 25),
                ),
                spacer ?? Spacer(),
              ],
            ),
          )
              : Align(
            alignment: textAlign == true
                ? Alignment.center
                : Alignment.centerLeft,
            child: Padding(
              padding: textPadding ?? EdgeInsets.zero,
              child: Text(
                text ?? '',
                style: textStyle ??
                    poppinsLightStyle(
                        color: textColor ?? Colors.white,
                        fontSize: widths / 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
