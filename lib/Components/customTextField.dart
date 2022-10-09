import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohandem_customer/Components/color.dart';
import 'package:mohandem_customer/Components/textStyle.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
        this.hintText,
        this.obscureText = false,
        this.isHintLabel = false,
        this.suffix,
        required this.controller,
        this.borderColor = true,
        this.focus = false,
        this.maxLines = 1,
        this.prefixIcons,
        this.onlyRead = true,
        this.validationError,
        this.isConfirmPassword = false,
        this.isEmail = false,
        this.align = TextAlign.start,
        this.radiusCircle = 3,
        this.fillColor,
        this.textInputType = TextInputType.text,
        this.borderAssignColor,
        this.hintStyle,
        this.borderWidth,
        this.decoration,
        this.suffixContentPadding,
        this.onFieldSubmitted,
        this.cursorColor,
        this.contentPad = true,
        this.textCustomStyle,
        this.onChanged,
        this.isUserName,
        this.inputFormatter,
        this.enable = true,
        this.onDone})
      : super(key: key);

  String? hintText;
  Widget? suffix;
  bool? obscureText = false;
  bool? isUserName = false;
  bool? focus = false;
  ValueChanged<String>? onFieldSubmitted;
  bool? borderColor = true;
  bool? isHintLabel = false;
  int? maxLines;
  Widget? prefixIcons;
  List<TextInputFormatter>? inputFormatter;
  BoxDecoration? decoration;
  bool? onlyRead;
  TextInputType? textInputType;
  String? validationError;
  bool? isConfirmPassword = false;
  bool? isEmail = false;
  bool? enable = true;
  double? radiusCircle = 3;
  Color? fillColor;
  EdgeInsets? suffixContentPadding;
  Color? borderAssignColor;
  Color? cursorColor;
  TextStyle? hintStyle;
  TextStyle? textCustomStyle;
  TextAlign align = TextAlign.start;
  bool contentPad = true;
  VoidCallback? onDone;
  ValueChanged<String>? onChanged;
  TextEditingController controller = TextEditingController();

  double? borderWidth;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatter,
      onSaved: (c) {},
      onEditingComplete: onDone ?? () {},
      enabled: enable,
      textAlign: align,
      cursorColor: cursorColor,
      autofocus: focus!,
      style: textCustomStyle ??
          poppinsStyle(
            fontSize: 16,
            color: DynamicColors.blackColor,
          ),
      controller: controller,
      keyboardType: textInputType,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      decoration: buildInputDecoration(),
      readOnly: !onlyRead!,
      maxLines: maxLines,
      minLines: 1,
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please Enter $validationError';
        } else if (isUserName == true) {
          if (value.length >= 8 && value.length <= 16) {
            return null;
          } else {
            return "Characters must be 8 to 16";
          }
        } else {
          if (isEmail == true) {
            return validateEmail(value);
          } else {
            return null;
          }
        }
      },
    );
  }

  InputDecoration buildInputDecoration() {
    if(isHintLabel == false){
      return InputDecoration(
        contentPadding: suffixContentPadding ??
            (suffix == null
                ? EdgeInsets.only(
                    left: contentPad ? 12 : 0,
                  )
                : EdgeInsets.only(
                    left: 12,
                    top: 10,
                  )),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: DynamicColors.blackColor)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: DynamicColors.blackColor)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: DynamicColors.blackColor)),
        hintText: hintText,
        hintStyle: hintStyle ??
            montserratStyle(
                fontSize: 15, color: DynamicColors.blackColor.withOpacity(0.5)),
        helperStyle: montserratStyle(),
        suffixIcon: suffix,
        prefixIcon: prefixIcons,
      );
    }
    return InputDecoration(
      contentPadding: suffixContentPadding ??
          (suffix == null
              ? EdgeInsets.only(
            left: contentPad ? 12 : 0,
          )
              : EdgeInsets.only(
            left: 12,
            top: 10,
          )),
      border: UnderlineInputBorder(
          borderSide: BorderSide(color: DynamicColors.blackColor)),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: DynamicColors.blackColor)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: DynamicColors.blackColor)),
      labelText: hintText,
      labelStyle: hintStyle ??
          montserratStyle(
              fontSize: 15, color: DynamicColors.blackColor.withOpacity(0.5)),
      helperStyle: montserratStyle(),
      suffixIcon: suffix,
      prefixIcon: prefixIcons,
    );
  }

  validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid email address";
    } else {
      return null;
    }
  }
}
