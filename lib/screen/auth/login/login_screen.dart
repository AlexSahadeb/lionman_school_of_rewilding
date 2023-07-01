import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/login/forget_password.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/signup_screen.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/deshboard.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool _isvisible = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: containerDecoration,
          width: double.maxFinite,
          height: double.maxFinite,
          padding: allPadding.padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      Images.serviveLogo,
                      height: 200.h,
                    )),
                Text(
                  "Log In",
                  style: TextStyles.extraLargeTextBoldStyle()
                      .copyWith(fontSize: 30.sp),
                ),
                Text("Welcome!", style: TextStyles.styleText()),
                SizedBox(
                  height: 30.h,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text("Password", style: TextStyles.styleText()),
                        SizedBox(
                          height: 3.h,
                        ),
                        CustomTextField(
                          controller: passwordController,
                          validator: (p0) {},
                          onChanged: (value) {},
                          hintText: "Enter your password",
                          filled: true,
                          obscureText: _isvisible,
                          fillColor: ColorResources.textfilColor,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isvisible = !_isvisible;
                              });
                            },
                            child: Icon(
                              _isvisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ColorResources.colorWhite,
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => ForgetScreen());
                    },
                    child:
                        Text("Forget Password", style: TextStyles.styleText()),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                SubmitButton(
                  bgColor: ColorResources.colorWhite,
                  onPressed: () {
                    Get.to(() => Deshboard());
                  },
                  text: 'Log In',
                  textColor: ColorResources.colorBlack,
                ),
                SizedBox(
                  height: 70.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyles.extraSmallBoldTextStyle()
                            .copyWith(fontWeight: FontWeight.normal),
                        children: [
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyles.extraSmallBoldTextStyle(),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(
                                      () => SignUpScreen(),
                                    ))
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
