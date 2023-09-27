import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';

class TeacherPersonalDetailsInProfile extends StatelessWidget {
  const TeacherPersonalDetailsInProfile({super.key});

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Education",
                                    style: TextStyles.smallMediamTextStyle()
                                        .copyWith(
                                            color: ColorResources.colorBlack),
                                  ),
                                  Text("Gradution",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorGrey)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Full Time",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorGrey)),
                                  GestureDetector(
                                    onTap: () {
                                      //
                                    },
                                    child: const Icon(
                                      Icons.delete,
                                      color: ColorResources.colorRed,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Stream",
                                      style: TextStyles.smallMediamTextStyle()
                                          .copyWith(
                                              color:
                                                  ColorResources.colorBlack)),
                                  Text("Lorem Ipsum",
                                      style: TextStyles.styleText().copyWith(
                                          color: ColorResources.colorGrey)),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.file_download_outlined,
                                  ),
                                  Icon(
                                    Icons.description,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
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
                    title: "Personal Details/ID Proof",
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
