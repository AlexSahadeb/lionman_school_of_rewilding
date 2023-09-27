import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/teacher_select_your_domain.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class TeacherPersonalDetails extends StatefulWidget {
 const TeacherPersonalDetails({super.key});

  @override
  State<TeacherPersonalDetails> createState() => _TeacherPersonalDetailsState();
}

class _TeacherPersonalDetailsState extends State<TeacherPersonalDetails> {
  TextEditingController addressController = TextEditingController();

  TextEditingController idProofController = TextEditingController();

  final List<String> items2 = [
    'All Rounds',
    '18 Holes',
    '9 Holes',
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
                    Text("Address", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: addressController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter Address",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("ID Proof", style: TextStyles.styleText()),
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
                            'Select ID Proof',
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Upload ID Proof",
                        style: TextStyles.styleText()
                            .copyWith(color: ColorResources.colorWhite)),
                    SizedBox(
                      height: 3.h,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Icon(
                            Icons.upload_outlined,
                            size: 35,
                            color: ColorResources.colorWhite.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {
                        Get.to(() =>const TeacherSelectYouDomain());
                      },
                      text: 'Save & Next',
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
