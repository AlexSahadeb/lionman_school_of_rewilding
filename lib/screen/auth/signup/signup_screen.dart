import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/student.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/teacher.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';

class SignUpScreen extends StatefulWidget {
 const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                decoration: containerDecoration,
                width: double.maxFinite,
                height: double.maxFinite,
                padding: allPadding.padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyles.extraLargeTextBoldStyle()
                          .copyWith(fontSize: 30.sp),
                    ),
                    Text("Enter your details below",
                        style: TextStyles.styleText()),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      child: TabBar(
                          physics: const ClampingScrollPhysics(),
                          unselectedLabelColor: ColorResources.colorWhite,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: ColorResources.colorBlack,
                          labelStyle: TextStyles.styleText(),
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: ColorResources.colorWhite),
                          tabs: [
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorResources.textfilColor,
                                      width: 2),
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: const Align(
                                    alignment: Alignment.center,
                                    child: Text("Student")),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorResources.textfilColor,
                                      width: 2),
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Teacher",
                                    )),
                              ),
                            ),
                          ]),
                    ),
                    const Expanded(
                        child: TabBarView(children: [Students(), Teachers()]))
                  ],
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
      ),
    );
  }
}
