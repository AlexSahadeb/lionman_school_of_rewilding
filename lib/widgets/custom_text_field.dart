import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  bool obscureText;
  final ValueChanged<String>? onChanged;
  String? Function(String?)? validator;
  String? Function(String?)? onSaved;
  String? hintText;
  Widget? suffixIcon;
  bool? filled;
  Color? fillColor;
  CustomTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.hintText,
    this.fillColor,
    this.filled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      textAlignVertical: TextAlignVertical.center,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.r),
              borderSide: BorderSide.none),
          suffixStyle: const TextStyle(fontSize: 17),
          hintText: hintText,
          filled: filled,
          fillColor: fillColor,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: ColorResources.colorWhite,
          ),
          suffixIcon: suffixIcon),
    );
  }
}
