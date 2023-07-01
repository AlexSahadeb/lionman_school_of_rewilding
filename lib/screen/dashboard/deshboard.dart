import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/appointment/appointment_screen.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/home/home_screen.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/massage/massage_screen.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/profile_screen.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:video_player/video_player.dart';

class Deshboard extends StatefulWidget {
  Deshboard({super.key});

  @override
  State<Deshboard> createState() => _DeshboardState();
}

class _DeshboardState extends State<Deshboard> {
  final List screens = [
    HomeScreen(),
    AppointmentScreen(),
    MassageScreen(),
    ProfileScreen()
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
