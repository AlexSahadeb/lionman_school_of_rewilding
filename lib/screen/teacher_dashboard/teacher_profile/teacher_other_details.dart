import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_basic_details_in_Profile.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_educational_details_in_profile.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_experiance_in_profile.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_personal_details_in_profile.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacherprofile/teacher_edit_domain_in_profile.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';

class TeacherOtherDetails extends StatelessWidget {
  const TeacherOtherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() => const TeacherBasicDetailsInProfile());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Basic Details",
                            style: TextStyles.styleText().copyWith(
                                color: ColorResources.colorBlack,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() => const TeacherEducationDetailsInProfile());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Education Details",
                            style: TextStyles.styleText().copyWith(
                                color: ColorResources.colorBlack,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() => TeacherExperienceInProfile());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Experiance",
                            style: TextStyles.styleText().copyWith(
                                color: ColorResources.colorBlack,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() => const TeacherPersonalDetailsInProfile());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Personal Details/ Id Proof",
                            style: TextStyles.styleText().copyWith(
                                color: ColorResources.colorBlack,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() =>const TeacherEditDomainInProfile());
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Domain",
                            style: TextStyles.styleText().copyWith(
                                color: ColorResources.colorBlack,
                                fontSize: 18.sp),
                          ),
                        ),
                      ),
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
                    title: "Other Details",
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
