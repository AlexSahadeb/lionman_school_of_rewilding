import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_deshboard.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/dialog_button.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class TeacherEditDomainInProfile extends StatefulWidget {
 const TeacherEditDomainInProfile({super.key});

  @override
  State<TeacherEditDomainInProfile> createState() => _TeacherEditDomainInProfileState();
}

class _TeacherEditDomainInProfileState extends State<TeacherEditDomainInProfile> {
  List<String> domainImage = [
    Images.sciencelab,
    Images.arts,
    Images.litarature,
    Images.low
  ];

  List<String> domainname = [
    "Science",
    "Arts",
    "Litarature",
    "Low",
  ];

  bool isChecked = false;
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            contentPadding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r)),
            content: Wrap(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.close,
                              size: 22,
                            ),
                          )),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 30,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  ColorResources.colorBrown,
                                  ColorResources.colorYellow
                                ],
                              ),
                            ),
                            child: const Icon(
                              Icons.done,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Your Details has been submitted, \nPlease wait for admin approval.",
                          textAlign: TextAlign.center,
                          style: TextStyles.styleText()
                              .copyWith(color: ColorResources.colorBlack),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      DiaogButton(
                          onPressed: () {
                            Get.to(() =>const TeacherDeshboard());
                          },
                          text: "Ok",
                          textColor: ColorResources.colorWhite),
                      SizedBox(
                        height: 15.h,
                      )
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

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
                      height: 400,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemBuilder: (context, index) => Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.r),
                                      child: Image.asset(
                                        domainImage[index],
                                        fit: BoxFit.cover,
                                        height: double.maxFinite,
                                        width: double.maxFinite,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        decoration: BoxDecoration(
                                            color: ColorResources.colorBlack
                                                .withOpacity(.7),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(12.r),
                                                bottomRight:
                                                    Radius.circular(12.r))),
                                        alignment: Alignment.center,
                                        child: Text(domainname[index],
                                            style: TextStyles.styleText()
                                                .copyWith(
                                                    color: ColorResources
                                                        .colorWhite)),
                                      )),
                                  Positioned(
                                    right: 3,
                                    top: 3,
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {
                        _showMyDialog();
                      },
                      text: 'Update',
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
                    title: "Edit Domain",
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
