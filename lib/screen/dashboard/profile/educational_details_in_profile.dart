import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/experience.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class EducationDetailsInProfile extends StatefulWidget {
  const EducationDetailsInProfile({super.key});

  @override
  State<EducationDetailsInProfile> createState() =>
      _EducationDetailsInProfileState();
}

class _EducationDetailsInProfileState extends State<EducationDetailsInProfile> {
  int selectedAgeIndex = 0;
  String? ageRangeRadioVal;
  final List<String> items1 = [
    'All Rounds',
    '18 Holes',
    '9 Holes',
    'Offical',
    'Season Rounds',
    'Practice',
    'Toumament'
  ];

  String? selectedValue1;
  final List<String> items2 = [
    'All Rounds',
    '18 Holes',
    '9 Holes',
    'Offical',
    'Season Rounds',
    'Practice',
    'Toumament'
  ];

  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: containerDecoration,
              width: double.maxFinite,
              height: double.maxFinite,
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
                                    child:const Icon(
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Add Expereance",
                        style: TextStyles.extraBoldStyleText()),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text("Education", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 42.h,
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: ColorResources.textfilColor,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: ColorResources.colorWhite,
                          ),
                          dropdownColor: ColorResources.textfilColor,
                          hint: Text(
                            '18 Holes',
                            style: TextStyles.styleText(),
                          ),
                          items: items1
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,
                                        style: TextStyles.styleText()),
                                  ))
                              .toList(),
                          value: selectedValue1,
                          onChanged: (value) {
                            setState(() {
                              selectedValue1 = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Stream", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 42.h,
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: ColorResources.textfilColor,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: ColorResources.colorWhite,
                          ),
                          dropdownColor: ColorResources.textfilColor,
                          hint: Text(
                            '18 Holes',
                            style: TextStyles.styleText(),
                          ),
                          items: items2
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,
                                        style: TextStyles.styleText()),
                                  ))
                              .toList(),
                          value: selectedValue2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue2 = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: selectedAgeIndex,
                                activeColor: ColorResources.colorWhite,
                                onChanged: (value) {
                                  setState(() {
                                    selectedAgeIndex = value!;
                                    ageRangeRadioVal = 'Full Time';
                                  });
                                },
                              ),
                              Text("Full Time", style: TextStyles.styleText()),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: selectedAgeIndex,
                                activeColor: ColorResources.colorWhite,
                                onChanged: (value) {
                                  setState(() {
                                    selectedAgeIndex = value!;
                                    ageRangeRadioVal = 'Part Time';
                                  });
                                },
                              ),
                              Text("Part Time", style: TextStyles.styleText()),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: selectedAgeIndex,
                                activeColor: ColorResources.colorWhite,
                                onChanged: (value) {
                                  setState(() {
                                    selectedAgeIndex = value!;
                                    ageRangeRadioVal = 'Distamce';
                                  });
                                },
                              ),
                              Text("Distance", style: TextStyles.styleText()),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text("Document", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: ColorResources.colorWhite,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                            size: 35,
                            color: ColorResources.colorGrey.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {},
                      text: 'Save',
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
                    title: "Education Details",
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
