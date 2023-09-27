import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teachermassage/teacher_chat_screen.dart';

class TeacherMassageScreen extends StatelessWidget {
  const TeacherMassageScreen({super.key});
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
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(() => TeacherChatScreen());
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 12.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: ColorResources.colorWhite),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding:const EdgeInsets.all(10),
                                      child:const CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            AssetImage(Images.profile),
                                      ),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text("06:00 AM",
                                                  style: TextStyles
                                                          .extraPreSmallTextStyle()
                                                      .copyWith(
                                                          color: ColorResources
                                                              .colorGrey)),
                                            ],
                                          ),
                                          Text("Alex Sahadeb",
                                              style: TextStyles
                                                      .extraBoldStyleText()
                                                  .copyWith(
                                                      color: ColorResources
                                                          .colorBlack)),
                                          Text(
                                            "USA, New York",
                                            style:
                                                TextStyles.preSmallTextStyle()
                                                    .copyWith(
                                                        color: ColorResources
                                                            .colorGrey),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
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
                  title: Text("Massages",
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
