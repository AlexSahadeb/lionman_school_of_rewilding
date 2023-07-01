import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/deshboard.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class EditVedioDetails extends StatefulWidget {
  EditVedioDetails({super.key});

  @override
  State<EditVedioDetails> createState() => _EditVedioDetailsState();
}

class _EditVedioDetailsState extends State<EditVedioDetails> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  final List<String> category = [
    'All Rounds',
    '18 Holes',
    '9 Holes',
  ];
  String? selectedCategory;

  final List<String> subCategory = [
    'All Rounds',
    '18 Holes',
    '9 Holes',
  ];
  String? selectedSubCategory;

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
                    Text("Upload Video",
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
                      height: 15.h,
                    ),
                    Text("Title", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      controller: titleController,
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
                    Text("Description", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      controller: descriptionController,
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
                    Text("Category", style: TextStyles.styleText()),
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
                            'Select Category',
                            style: TextStyles.styleText(),
                          ),
                          items: category
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,
                                        style: TextStyles.styleText()),
                                  ))
                              .toList(),
                          value: selectedCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedCategory = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Sub-Category", style: TextStyles.styleText()),
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
                            'Select Sub Category',
                            style: TextStyles.styleText(),
                          ),
                          items: subCategory
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,
                                        style: TextStyles.styleText()),
                                  ))
                              .toList(),
                          value: selectedSubCategory,
                          onChanged: (value) {
                            setState(() {
                              selectedSubCategory = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    SubmitButton(
                      bgColor: ColorResources.colorWhite,
                      onPressed: () {
                        Get.to(() => Deshboard());
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
                    title: "Edit Video Details",
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
