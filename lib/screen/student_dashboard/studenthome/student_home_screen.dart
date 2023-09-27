import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/student_dashboard/studenthome/arts_category.dart';
import 'package:lionman_school_of_rewilding/screen/student_dashboard/studenthome/litarature_category.dart';
import 'package:lionman_school_of_rewilding/screen/student_dashboard/studenthome/low_category.dart';
import 'package:lionman_school_of_rewilding/screen/student_dashboard/studenthome/science_category.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';


class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  TextEditingController searchController = TextEditingController();

  List<DomainModel> domainItem = [
    DomainModel(img: Images.sciencelab, name: "Science", onTap: const ScienceCategory()),
    DomainModel(img: Images.arts, name: "Arts", onTap: const ArtsCategory()),
    DomainModel(img: Images.litarature, name: "Litarature", onTap: const LitaratureCategory()),
    DomainModel(img: Images.low, name: "Low", onTap: const LowCategory()),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    CustomTextField(
                      controller: searchController,
                      validator: (p0) {},
                      onChanged: (value) {},
                      hintText: "Search here...",
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: ColorResources.colorWhite,
                      ),
                      filled: true,
                      fillColor: ColorResources.textfilColor,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",
                            style: TextStyles.extraBoldStyleText()),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "View All",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 380,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Get.to(() => domainItem[index].onTap);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(12.r)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        child: Image.asset(
                                          domainItem[index].img.toString(),
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
                                          child: Text(
                                              domainItem[index].name.toString(),
                                              style: TextStyles.styleText()
                                                  .copyWith(
                                                      color: ColorResources
                                                          .colorWhite)),
                                        )),
                                  ],
                                ),
                              )),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              Images.workingTime,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: ColorResources.colorBronze
                                      .withOpacity(.9)),
                              child: const Text("Subscribe To see All Videos"),
                            )),
                        Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: ColorResources.colorBronze
                                      .withOpacity(.9)),
                              child: const Text("BASIC PLAN"),
                            )),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        ColorResources.colorBrown,
                                        ColorResources.colorYellow
                                      ])),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                child: Text(
                                  "Subscribe",
                                  style: TextStyles.styleText().copyWith(
                                      color: ColorResources.colorWhite,
                                      fontSize: 18.sp),
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              Images.videoCalBanner,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: ColorResources.colorBronze
                                      .withOpacity(.9)),
                              child: const Text(
                                  "Subscribe To see All Videos & Back Appointment"),
                            )),
                        Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: ColorResources.colorBronze
                                      .withOpacity(.9)),
                              child: const Text("PREMIUM PLAN"),
                            )),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        ColorResources.colorBrown,
                                        ColorResources.colorYellow
                                      ])),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                child: Text(
                                  "Subscribe",
                                  style: TextStyles.styleText().copyWith(
                                      color: ColorResources.colorWhite,
                                      fontSize: 18.sp),
                                ),
                              ),
                            ))
                      ],
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
                    child: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      centerTitle: false,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Kristin",
                              style: TextStyles.smallMediamTextStyle()),
                          Text("Let's start learning",
                              style: TextStyles.extraPreSmallTextStyle()
                                  .copyWith(
                                      color: ColorResources.colorWhite
                                          .withOpacity(.6)))
                        ],
                      ),
                      leading: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(Images.profile),
                          )),
                      actions: [
                        IconButton(
                            onPressed: () {
                              //Get.to(() => const TeacherNotificationScreen());
                            },
                            icon: const Icon(Icons.filter_alt)),
                        IconButton(
                            onPressed: () {
                              // Get.to(() => const TeacherNotificationScreen());
                            },
                            icon: const Icon(Icons.notifications))
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DomainModel {
  String? img;
  String? name;
  Widget onTap;

  DomainModel({required this.img, required this.name, required this.onTap});
}
