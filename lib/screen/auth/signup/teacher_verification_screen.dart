import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/signup_screen.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/teacher_basic_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class TeacherVerificationScreen extends StatefulWidget {
 const TeacherVerificationScreen({super.key});

  @override
  State<TeacherVerificationScreen> createState() => _TeacherVerificationScreenState();
}

class _TeacherVerificationScreenState extends State<TeacherVerificationScreen> {
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
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            "Verification?",
                            style: TextStyles.extraLargeTextBoldStyle()
                                .copyWith(fontSize: 30.sp),
                          ),
                          Text(
                              "Enter the 4-digit code sent to you at joinmatar@gmail.com",
                              style: TextStyles.styleText()),
                          SizedBox(
                            height: 30.h,
                          ),
                          PinCodeTextField(
                            appContext: context,
                            length: 4,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            cursorColor: ColorResources.colorRed,
                            keyboardType: TextInputType.number,
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(60.r),
                                fieldHeight: 45.h,
                                fieldWidth: 50.w,
                                activeFillColor: ColorResources.textfilColor,
                                inactiveColor: ColorResources.colorRed,
                                selectedColor: ColorResources.colorGreen),
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: false,
                            //errorAnimationController: errorController,
                            //controller: textEditingController,
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                              // setState(() {
                              //   currentText = value;
                              // });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");

                              return true;
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          SubmitButton(
                            bgColor: ColorResources.colorWhite,
                            onPressed: () {
                              Get.to(() =>const TeacherBasicDetails());
                            },
                            text: 'Verify',
                            textColor: ColorResources.colorBlack,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                  text: "Didn't receive code? ",
                                  style: TextStyles.extraSmallBoldTextStyle()
                                      .copyWith(fontWeight: FontWeight.normal),
                                  children: [
                                    TextSpan(
                                        text: 'Request Again',
                                        style: TextStyles
                                            .extraSmallBoldTextStyle(),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Get.to(
                                                () =>const SignUpScreen(),
                                              ))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    )
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
