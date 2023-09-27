import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_edit_profile.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_my_wallet.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_other_details.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_setting_screen.dart';
import 'package:lionman_school_of_rewilding/widgets/around_icon_button.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});
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
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 65),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: ColorResources.colorWhite),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image.asset(
                                Images.profile,
                                fit: BoxFit.cover,
                                width: double.maxFinite,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name:",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                    Text(
                                      "Alex Sahadeb",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email:",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                    Text(
                                      "alexsahadeb99@gmail.com",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Phone Number:",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                    Text(
                                      "01723413183",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorBlack),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ColorResources.colorBrown,
                                          ColorResources.colorYellow,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.r)),
                                          textStyle: TextStyles.styleText()),
                                      onPressed: () {
                                        Get.to(() => TeacherEditProfile());
                                      },
                                      child: Text(
                                        "Edit Profile",
                                        style: TextStyles.styleText().copyWith(
                                            color: ColorResources.colorWhite,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: ColorResources.colorBrown),
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.r)),
                                          textStyle: TextStyles.styleText()),
                                      onPressed: () {
                                        Get.to(() =>const TeacherOtherDetails());
                                      },
                                      child: Text(
                                        "Other Details",
                                        style: TextStyles.styleText().copyWith(
                                            color: ColorResources.colorBrown,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                )),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.h,
                child: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  leading: InkWell(
                    onTap: () {
                      Get.to(() => TeacherMyWallet());
                    },
                    child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 15),
                        decoration: const BoxDecoration(
                            color: ColorResources.colorWhite,
                            shape: BoxShape.circle),
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorResources.colorBrown,
                                ColorResources.colorYellow
                              ],
                            ).createShader(bounds);
                          },
                          child: const Icon(
                            Icons.folder,
                            color: Colors.white,
                            size: 25,
                          ),
                        )),
                  ),
                  title:
                      Text("Profile", style: TextStyles.smallMediamTextStyle()),
                  centerTitle: true,
                  actions: [
                    AroundIconButton(
                      onPressed: () {
                        Get.to(() =>const TeacherSettingScreen());
                      },
                      icon: Icons.settings,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
