import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
                    
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              Images.profile,
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                              opacity: const AlwaysStoppedAnimation(.5),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: GestureDetector(
                            onTap: () {},
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
                                  Icons.camera_alt,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: TextStyles.styleText()),
                          SizedBox(
                            height: 3.h,
                          ),
                          CustomTextField(
                            controller: nameController..text = "Alex Sahadeb",
                            validator: (p0) {},
                            onChanged: (value) {},
                            filled: true,
                            fillColor: ColorResources.textfilColor,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Your Email", style: TextStyles.styleText()),
                          SizedBox(
                            height: 3.h,
                          ),
                          CustomTextField(
                            controller: emailController
                              ..text = "alexsahadeb99@gmail.com",
                            validator: (p0) {},
                            onChanged: (value) {},
                            filled: true,
                            fillColor: ColorResources.textfilColor,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Phone Number", style: TextStyles.styleText()),
                          SizedBox(
                            height: 3.h,
                          ),
                          CustomTextField(
                            controller: phoneController
                              ..text = "+8801723413183",
                            validator: (p0) {},
                            onChanged: (value) {},
                            filled: true,
                            fillColor: ColorResources.textfilColor,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SubmitButton(
                            bgColor: ColorResources.colorWhite,
                            onPressed: () {
                              // Get.to(page)
                            },
                            text: 'Update',
                            textColor: ColorResources.colorBlack,
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
                    title: "Edit Profile",
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
