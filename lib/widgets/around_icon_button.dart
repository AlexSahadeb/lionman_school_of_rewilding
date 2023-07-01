
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';

class AroundIconButton extends StatelessWidget {
  const AroundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: 40.h,
          width: 40.w,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 15),
          decoration: const BoxDecoration(
              color: ColorResources.colorWhite, shape: BoxShape.circle),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ColorResources.colorBrown, ColorResources.colorYellow],
              ).createShader(bounds);
            },
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          )),
    );
  }
}
