import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/about_us.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/privacy_policy.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/teams_conditions.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/update_password.dart';
import 'package:lionman_school_of_rewilding/widgets/around_icon_button.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isChecked = false;

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
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: ColorResources.textfilColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                    child: AroundIconButton(
                                        icon: Icons.notifications,
                                        onPressed: () {}),
                                  ),
                                  Text(
                                    "Notification",
                                    style: TextStyles.styleText(),
                                  ),
                                ],
                              ),
                              Switch(
                                activeColor: ColorResources.colorWhite,
                                activeTrackColor: ColorResources.colorBrown,
                                value: isChecked,
                                onChanged: (bool value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: ColorResources.colorGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => UpdatePassword());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      child: AroundIconButton(
                                          icon: Icons.lock, onPressed: () {}),
                                    ),
                                    Text(
                                      "Change Password",
                                      style: TextStyles.styleText(),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: ColorResources.textfilColor,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const AboutUs());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      child: AroundIconButton(
                                          icon: Icons.info, onPressed: () {}),
                                    ),
                                    Text(
                                      "About Us",
                                      style: TextStyles.styleText(),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: ColorResources.colorGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const TeamConditions());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      child: AroundIconButton(
                                          icon: Icons.text_snippet,
                                          onPressed: () {}),
                                    ),
                                    Text(
                                      "Teams and Conditions",
                                      style: TextStyles.styleText(),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: ColorResources.colorGrey,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const PrivacyPolicy());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      child: AroundIconButton(
                                          icon: Icons.help, onPressed: () {}),
                                    ),
                                    Text(
                                      "Privacy Policy",
                                      style: TextStyles.styleText(),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: (){
                        // Log out
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.textfilColor,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 30.h,
                              child: AroundIconButton(
                                  icon: Icons.login, onPressed: () {}),
                            ),
                            Text(
                              "Log Out",
                              style: TextStyles.styleText(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.h,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text("Settings",
                      style: TextStyles.smallMediamTextStyle()),
                  centerTitle: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
