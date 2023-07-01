import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class BasicDetailsInProfile extends StatelessWidget {
  const BasicDetailsInProfile({super.key});

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
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gender:",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorBlack,
                                ),
                              ),
                              Text("Male",
                                  style: TextStyles.smallMediamTextStyle()
                                      .copyWith(
                                    color: ColorResources.colorGrey,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("DOB:",
                                  style: TextStyles.smallMediamTextStyle()
                                      .copyWith(
                                    color: ColorResources.colorBlack,
                                  )),
                              Text("02-08-2023",
                                  style: TextStyles.smallMediamTextStyle()
                                      .copyWith(
                                    color: ColorResources.colorGrey,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Appointment Fee:",
                                  style: TextStyles.smallMediamTextStyle()
                                      .copyWith(
                                    color: ColorResources.colorBlack,
                                  )),
                              Text("\$10",
                                  style: TextStyles.smallMediamTextStyle()
                                      .copyWith(
                                    color: ColorResources.colorGrey,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("About",
                              style: TextStyles.smallMediamTextStyle().copyWith(
                                color: ColorResources.colorBlack,
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem",
                              style: TextStyles.smallMediamTextStyle().copyWith(
                                color: ColorResources.colorBlack,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {},
                      text: 'Edit',
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
                    title: "Basic Details",
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
