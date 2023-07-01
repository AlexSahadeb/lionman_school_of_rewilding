import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';

class DiaogButton extends StatelessWidget {
  const DiaogButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
  });
  final Function() onPressed;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorResources.colorBrown,
                  ColorResources.colorYellow
                ])),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r)),
              textStyle: TextStyles.styleText()),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyles.styleText()
                .copyWith(color: textColor, fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}
