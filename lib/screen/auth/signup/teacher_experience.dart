import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/teacher_personal_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

// ignore: must_be_immutable
class TeacherExperience extends StatelessWidget {
  TeacherExperience({super.key});
  TextEditingController totalExperienceController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Total Experience (In Month)",
                        style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: totalExperienceController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter Total Experience",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Description", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      controller: aboutController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      textAlignVertical: TextAlignVertical.top,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide.none),
                        suffixStyle: const TextStyle(fontSize: 17),
                        hintText: "Write here...",
                        filled: true,
                        fillColor: ColorResources.textfilColor,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          color: ColorResources.colorWhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Skills", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: skillsController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter Skills",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {
                        Get.to(() =>const TeacherPersonalDetails());
                      },
                      text: 'Save & Next',
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
                    title: "Experience",
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
