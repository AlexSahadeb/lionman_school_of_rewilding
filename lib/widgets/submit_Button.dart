import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });
  final Function() onPressed;
  final String text;
  final Color bgColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: bgColor,
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
    );
  }
}
