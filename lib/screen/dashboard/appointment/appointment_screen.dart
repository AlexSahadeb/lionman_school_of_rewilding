import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/personal_details.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/appointment/appointment_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});
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
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(() => const AppointmentDetails());
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 15.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: ColorResources.colorWhite),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 120.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.r)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        child: Image.asset(
                                          Images.profile,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      height: 120.h,
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(12.r),
                                            bottomRight: Radius.circular(12.r)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Alex Sahadeb",
                                                  style: TextStyles
                                                          .extraBoldStyleText()
                                                      .copyWith(
                                                          color: ColorResources
                                                              .colorBlack)),
                                              Text("Online",
                                                  style: TextStyles.styleText()
                                                      .copyWith(
                                                          color: ColorResources
                                                              .colorBlack,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                            ],
                                          ),
                                          Text(
                                            "USA, New York",
                                            style:
                                                TextStyles.preSmallTextStyle()
                                                    .copyWith(
                                                        color: ColorResources
                                                            .colorGrey),
                                          ),
                                          Text(
                                            "Class: 01",
                                            style:
                                                TextStyles.preSmallTextStyle()
                                                    .copyWith(
                                                        color: ColorResources
                                                            .colorGrey),
                                          ),
                                          Text(
                                            "Subject: Science",
                                            style:
                                                TextStyles.preSmallTextStyle()
                                                    .copyWith(
                                                        color: ColorResources
                                                            .colorGrey),
                                          ),
                                          Text(
                                            "Lorem ipsum dolor sit amet",
                                            style:
                                                TextStyles.preSmallTextStyle()
                                                    .copyWith(
                                                        color: ColorResources
                                                            .colorGrey),
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.r),
                                                        gradient: const LinearGradient(
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter,
                                                            colors: [
                                                              ColorResources
                                                                  .colorBrown,
                                                              ColorResources
                                                                  .colorYellow
                                                            ])),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 6,
                                                          horizontal: 25),
                                                      decoration: BoxDecoration(
                                                          gradient: const LinearGradient(
                                                              begin: Alignment
                                                                  .topCenter,
                                                              end: Alignment
                                                                  .bottomCenter,
                                                              colors: [
                                                                ColorResources
                                                                    .colorBrown,
                                                                ColorResources
                                                                    .colorYellow
                                                              ]),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.r)),
                                                      child: Text(
                                                        "Accept",
                                                        style: TextStyles
                                                                .styleText()
                                                            .copyWith(
                                                                color: ColorResources
                                                                    .colorWhite,
                                                                fontSize:
                                                                    14.sp),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.r),
                                                        gradient: const LinearGradient(
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter,
                                                            colors: [
                                                              ColorResources
                                                                  .colorBrown,
                                                              ColorResources
                                                                  .colorYellow
                                                            ])),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 6,
                                                          horizontal: 25),
                                                      decoration: BoxDecoration(
                                                          color: ColorResources
                                                              .colorRed,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.r)),
                                                      child: Text(
                                                        "Delete",
                                                        style: TextStyles
                                                                .styleText()
                                                            .copyWith(
                                                                color: ColorResources
                                                                    .colorWhite,
                                                                fontSize:
                                                                    14.sp),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ))),
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
                  title: Text("My Appointments",
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
