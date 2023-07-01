import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final Widget? actionWidget;
  const CustomAppbar({super.key, required this.title, this.actionWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title, style: TextStyles.smallMediamTextStyle()),
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          )),
      centerTitle: true,
      actions: [
        actionWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}
