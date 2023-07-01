import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/login/login_screen.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> images = [
    Images.onbording1,
    Images.onbording2,
    Images.onbording3,
  ];
  List<String> title = [
    'Welcome',
    'Categories',
    'Support',
  ];
  List<String> description = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum',
  ];

  RxInt currentIndex = 0.obs;

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
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Obx(
                    () => Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.asset(
                          images[currentIndex.toInt()],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10.h,
              ),
              Obx(() => DotsIndicator(
                    dotsCount: images.length,
                    position: currentIndex.toInt(),
                    decorator: DotsDecorator(
                      size: const Size.square(10),
                      activeSize: const Size(20.0, 9.0),
                      activeColor: ColorResources.colorWhite,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Obx(
                            () => Text(
                              '${title[currentIndex.toInt()]}',
                              style: TextStyles.normalTextStyle(),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text('${description[currentIndex.toInt()]}',
                              textAlign: TextAlign.center,
                              style: TextStyles.styleText()),
                          SizedBox(height: 25.h),
                          Obx(() => SubmitButton(
                              onPressed: () {
                                if (currentIndex == title.length - 1) {
                                  Get.to(() => LoginScreen());
                                } else {
                                  currentIndex + 1;
                                }
                              },
                              text: currentIndex == title.length - 1
                                  ? "Get Started"
                                  : "Next",
                              bgColor: ColorResources.colorWhite,
                              textColor: ColorResources.colorBlack))
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
