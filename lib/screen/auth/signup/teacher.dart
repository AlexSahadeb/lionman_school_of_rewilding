import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/teacher_verification_screen.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class Teachers extends StatefulWidget {
  const Teachers({super.key});

  @override
  State<Teachers> createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confriomPassController = TextEditingController();
  bool _isvisible = true;
  GlobalKey formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Name", style: TextStyles.styleText()),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextField(
                    controller: nameController,
                    validator: (p0) {},
                    onChanged: (value) {},
                    hintText: "Enter your name",
                    filled: true,
                    fillColor: ColorResources.textfilColor,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 15.h,
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
                    height: 15.h,
                  ),
                  Text("Phone Number", style: TextStyles.styleText()),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextField(
                    controller: phoneController,
                    validator: (p0) {},
                    onChanged: (value) {},
                    hintText: "Enter your phone",
                    filled: true,
                    fillColor: ColorResources.textfilColor,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 15.h,
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
                        _isvisible ? Icons.visibility : Icons.visibility_off,
                        color: ColorResources.colorWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text("Confirm Password", style: TextStyles.styleText()),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    validator: (p0) {},
                    onChanged: (value) {},
                    hintText: "Confirm password",
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
                        _isvisible ? Icons.visibility : Icons.visibility_off,
                        color: ColorResources.colorWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CheckboxListTile(
                      value: checkedValue,
                      checkColor: ColorResources.colorWhite,
                      fillColor: const MaterialStatePropertyAll<Color>(
                        ColorResources.colorBlack,
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                      activeColor: ColorResources.colorBlack,
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                          "By creating an account you have to agree with our Trems & Conditions and Privacy Policy.",
                          style: TextStyles.styleText())),
                  SizedBox(
                    height: 20.h,
                  ),
                  SubmitButton(
                    bgColor: ColorResources.colorWhite,
                    onPressed: () {
                      Get.to(() =>const TeacherVerificationScreen());
                    },
                    text: 'Sign Up',
                    textColor: ColorResources.colorBlack,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
