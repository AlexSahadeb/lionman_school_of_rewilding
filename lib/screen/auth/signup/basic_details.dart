import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/education_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class BasicDetails extends StatefulWidget {
  BasicDetails({super.key});

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  final List<String> gender = [
    'Male',
    'Female',
  ];

  String? selectedgender;
  TextEditingController appointmentController = TextEditingController();
  TextEditingController dbController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  _selectedDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 50),
        lastDate: DateTime.now());

    if (picked != null) {
      dbController.text = "${picked.day}/${picked.month}/${picked.year}";
    } else {
      return null;
    }
  }

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
                        height: 5.h,
                      ),
                      Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: ColorResources.textfilColor.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name", style: TextStyles.styleText()),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text("Alex Sahadeb",
                                        style: TextStyles.styleText().copyWith(
                                            color: ColorResources.colorWhite
                                                .withOpacity(.5))),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: ColorResources.colorWhite,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Center(
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 40,
                                        color: ColorResources.colorGrey
                                            .withOpacity(.6),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text("Your Email", style: TextStyles.styleText()),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text("alexsahadeb99@gmail.com",
                                style: TextStyles.styleText().copyWith(
                                    color: ColorResources.colorWhite
                                        .withOpacity(.5))),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text("Phone Number", style: TextStyles.styleText()),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text("+8801723413183",
                                style: TextStyles.styleText().copyWith(
                                    color: ColorResources.colorWhite
                                        .withOpacity(.5))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
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
                              'Select Gender',
                              style: TextStyles.styleText()
                                  .copyWith(color: ColorResources.colorWhite),
                            ),
                            items: gender
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item,
                                          style: TextStyles.styleText()),
                                    ))
                                .toList(),
                            value: selectedgender,
                            onChanged: (value) {
                              setState(() {
                                selectedgender = value as String;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("Appointment Fee", style: TextStyles.styleText()),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        controller: appointmentController,
                        validator: (p0) {},
                        onChanged: (value) {},
                        hintText: "Enter Appointment Fee",
                        filled: true,
                        fillColor: ColorResources.textfilColor,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("DOB", style: TextStyles.styleText()),
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomTextField(
                        controller: dbController,
                        validator: (p0) {},
                        onChanged: (value) {},
                        hintText: "Date of Birth",
                        filled: true,
                        fillColor: ColorResources.textfilColor,
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: IconButton(
                            onPressed: () {
                              _selectedDateFromPicker(context);
                            },
                            icon: const Icon(
                              Icons.date_range_outlined,
                              color: ColorResources.colorWhite,
                            )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("About", style: TextStyles.styleText()),
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
                          fillColor: ColorResources.colorYellow,
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: ColorResources.colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      SubmitButton(
                        bgColor: ColorResources.colorWhite,
                        onPressed: () {
                          Get.to(() => EducationDetails());
                        },
                        text: 'Save & Next',
                        textColor: ColorResources.colorBlack,
                      ),
                    ],
                  )),
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
