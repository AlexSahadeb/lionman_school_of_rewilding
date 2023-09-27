import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/student_dashboard/studenthome/student_home_screen.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_appointment/teacher_appointment_screen.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teachermassage/teacher_massage_screen.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_profile_screen.dart';

class StudentDeshboard extends StatefulWidget {
 const StudentDeshboard({super.key});

  @override
  State<StudentDeshboard> createState() => _StudentDeshboardState();
}

class _StudentDeshboardState extends State<StudentDeshboard> {
  final List screens =const [
    StudentHomeScreen(),
    TeacherAppointmentScreen(),
    TeacherMassageScreen(),
    TeacherProfileScreen()
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            screens[pageIndex],
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 42.h,
                decoration: BoxDecoration(
                  color: ColorResources.colorWhite,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: BottomNavigationBar(
                  currentIndex: pageIndex,
                  onTap: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  selectedLabelStyle: TextStyles.preSmallTextStyle()
                      .copyWith(color: ColorResources.colorBlack),
                  unselectedLabelStyle: TextStyles.preSmallTextStyle()
                      .copyWith(color: ColorResources.colorGrey),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 20,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 20,
                      ),
                      label: 'Appoinment',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.message,
                        size: 20,
                      ),
                      label: 'Message',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 20,
                      ),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
