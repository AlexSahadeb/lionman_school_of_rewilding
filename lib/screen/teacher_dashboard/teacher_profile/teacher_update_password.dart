import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class TeacherUpdatePassword extends StatefulWidget {
 const TeacherUpdatePassword({super.key});

  @override
  State<TeacherUpdatePassword> createState() => _TeacherUpdatePasswordState();
}

class _TeacherUpdatePasswordState extends State<TeacherUpdatePassword> {
  TextEditingController oldController = TextEditingController();

  TextEditingController newController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  bool _isvisibleOld = true;
  bool _isvisibleNew = true;
  bool _isvisibleConfirm = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: containerDecoration,
              padding: allPadding.padding,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(Images.updatePassword),
                      Text("Old Password", style: TextStyles.styleText()),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        controller: oldController,
                        validator: (p0) {},
                        onChanged: (value) {},
                        hintText: "●●●●●●●●●",
                        filled: true,
                        obscureText: _isvisibleOld,
                        fillColor: ColorResources.textfilColor,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isvisibleOld = !_isvisibleOld;
                            });
                          },
                          child: Icon(
                            _isvisibleOld
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorResources.colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("New Password", style: TextStyles.styleText()),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        controller: newController,
                        validator: (val) {
                          if (val!.isEmpty) return 'Empty';
                          return null;
                        },
                        onChanged: (value) {},
                        hintText: "●●●●●●●●●",
                        filled: true,
                        obscureText: _isvisibleNew,
                        fillColor: ColorResources.textfilColor,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isvisibleNew = !_isvisibleNew;
                            });
                          },
                          child: Icon(
                            _isvisibleNew
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorResources.colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("Confirm Password", style: TextStyles.styleText()),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        controller: confirmController,
                        validator: (val) {
                          if (val!.isEmpty) return 'Empty';
                          if (val != newController.text) return 'Not Match';
                          return null;
                        },
                        onChanged: (value) {},
                        hintText: "●●●●●●●●●",
                        filled: true,
                        obscureText: _isvisibleConfirm,
                        fillColor: ColorResources.textfilColor,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isvisibleConfirm = !_isvisibleConfirm;
                            });
                          },
                          child: Icon(
                            _isvisibleConfirm
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorResources.colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SubmitButton(
                        bgColor: ColorResources.colorWhite,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Get.to(page)
                          }
                        },
                        text: 'Update',
                        textColor: ColorResources.colorBlack,
                      ),
                    ],
                  ),
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
                    title: "Update Password",
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
