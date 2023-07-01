import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/personal_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class ExperienceInProfile extends StatelessWidget {
  ExperienceInProfile({super.key});
  TextEditingController totalExperienceController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
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
                              Text("Total Experiance",
                                  style: TextStyles.extraBoldStyleText()
                                      .copyWith(
                                          color: ColorResources.colorBlack)),
                              GestureDetector(
                                onTap: () {
                                  //
                                },
                                child: const Icon(
                                  Icons.delete,
                                  color: ColorResources.colorRed,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "15 Member",
                            style: TextStyles.styleText()
                                .copyWith(color: ColorResources.colorGrey),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Descriptions",
                              style: TextStyles.extraBoldStyleText()
                                  .copyWith(color: ColorResources.colorBlack)),
                          Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                              style: TextStyles.styleText()
                                  .copyWith(color: ColorResources.colorGrey)),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Skills",
                              style: TextStyles.extraBoldStyleText()
                                  .copyWith(color: ColorResources.colorBlack)),
                          Text("Lorem Ipsum",
                              style: TextStyles.styleText()
                                  .copyWith(color: ColorResources.colorGrey))
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
                    Text("Total Experience (In Month)",
                        style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: totalExperienceController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter Total Experience",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Description", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      controller: aboutController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      textAlignVertical: TextAlignVertical.top,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide.none),
                        suffixStyle: const TextStyle(fontSize: 17),
                        hintText: "Write here...",
                        filled: true,
                        fillColor: ColorResources.textfilColor,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          color: ColorResources.colorWhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Skills", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: skillsController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Enter Skills",
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Add a attachment", style: TextStyles.styleText()),
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
                      height: 40.h,
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
                    title: "Experience",
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
