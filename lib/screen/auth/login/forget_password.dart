import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class ForgetScreen extends StatefulWidget {
  ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: containerDecoration,
              width: double.maxFinite,
              height: double.maxFinite,
              padding: allPadding.padding,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          Images.serviveLogo,
                          height: 180.h,
                        )),
                    Text(
                      "Forgot\nPassword?",
                      style: TextStyles.extraLargeTextBoldStyle()
                          .copyWith(fontSize: 30.sp),
                    ),
                    Text(
                        "We just need your registered Email ID to send you Password reset instructions.",
                        style: TextStyles.styleText()),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text("Your Email", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: emailController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter your mail",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {},
                      text: 'Submit',
                      textColor: ColorResources.colorBlack,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.h,
                child: PreferredSize(
                  preferredSize: Size.fromHeight(50.h),
                  child: const CustomAppbar(
                    title: "",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
