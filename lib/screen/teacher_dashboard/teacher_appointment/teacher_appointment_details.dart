import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';

class TeacherAppointmentDetails extends StatelessWidget {
  const TeacherAppointmentDetails({super.key});
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            children: [
                              Container(
                                height: 120.h,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.r),
                                  child: Image.asset(
                                    Images.profile,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 5,
                                  bottom: 5,
                                  child: Container(
                                      height: 25.h,
                                      width: 25.w,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(4),
                                      decoration: const BoxDecoration(
                                          color: ColorResources.colorWhite,
                                          shape: BoxShape.circle),
                                      child: ShaderMask(
                                        shaderCallback: (Rect bounds) {
                                          return const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              ColorResources.colorBrown,
                                              ColorResources.colorYellow
                                            ],
                                          ).createShader(bounds);
                                        },
                                        child: const Icon(
                                          Icons.message,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      )))
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                              height: 120.h,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.r),
                                    bottomRight: Radius.circular(12.r)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Alex Sahadeb",
                                      style: TextStyles.extraBoldStyleText()),
                                  Text("USA, New York",
                                      style: TextStyles.preSmallTextStyle()),
                                  Text("Class: 01",
                                      style: TextStyles.preSmallTextStyle()),
                                  Text("Subject: Science",
                                      style: TextStyles.preSmallTextStyle()),
                                  Text("Lorem ipsum dolor sit amet",
                                      style: TextStyles.preSmallTextStyle()),
                                  Text("Date: 09-Feb-2023",
                                      style: TextStyles.preSmallTextStyle()),
                                  Text("Time: 09:00 AM",
                                      style: TextStyles.preSmallTextStyle()),
                                ],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Appointment Type- ',
                        style: TextStyles.styleText(),
                        children: [
                          TextSpan(
                              text: 'Online',
                              style: TextStyles.styleText()
                                  .copyWith(fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "About",
                      style: TextStyles.styleText(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, mol stiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid",
                      style: TextStyles.styleText(),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: ColorResources.colorWhite),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r)),
                                textStyle: TextStyles.styleText()),
                            onPressed: () {},
                            child: Text(
                              "Accept",
                              style: TextStyles.styleText().copyWith(
                                  color: ColorResources.colorBlack,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: ColorResources.colorRed),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r)),
                                textStyle: TextStyles.styleText()),
                            onPressed: () {},
                            child: Text(
                              "Decline",
                              style: TextStyles.styleText().copyWith(
                                  color: ColorResources.colorWhite,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.h,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text("Appointments Details",
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
