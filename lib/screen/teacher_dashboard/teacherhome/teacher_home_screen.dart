import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacherhome/teacher_notification_screen.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacherhome/teacher_upload_vedio.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacherhome/teacher_vedio_details.dart';
import 'package:video_player/video_player.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({super.key});

  @override
  State<TeacherHomeScreen> createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  VideoPlayerController? controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.network(
        'https://www.fluttercampus.com/video.mp4');
    controller!.addListener(() {
      setState(() {});
    });
    controller!.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          padding: const EdgeInsets.only(bottom: 60),
          height: 95.h,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: ColorResources.colorWhite,
              onPressed: () {
                Get.to(() =>const TeacherUploadVedio());
              },
              child: const Icon(
                Icons.add,
                color: ColorResources.colorBlack,
                size: 30,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: containerDecoration,
              width: double.maxFinite,
              height: double.maxFinite,
              padding: allPadding.padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r)),
                          child: Image.asset(
                            Images.banner,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Text("Uploaded Videos", style: TextStyles.extraBoldStyleText()),
                  SizedBox(
                    height: 4.h,
                  ),
                  Expanded(
                      flex: 6,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 15),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(() =>const TeacherVideoDetails());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                // aspectRatio: controller!.value.aspectRatio,
                                aspectRatio: 20 / 16,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(12.r),
                                        child: VideoPlayer(controller!)),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        left: 5,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30.r),
                                                  gradient: const LinearGradient(
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.bottomCenter,
                                                      colors: [
                                                        ColorResources.colorBrown,
                                                        ColorResources.colorYellow
                                                      ])),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.visibility,
                                                    color:
                                                        ColorResources.colorWhite,
                                                    size: 16,
                                                  ),
                                                  Text(
                                                    "12.5",
                                                    style: TextStyles
                                                            .extraPreSmallTextStyle()
                                                        .copyWith(
                                                            fontSize: 11.sp),
                                                  ),
                                                  Text("k")
                                                ],
                                              ),
                                            ),
                                            Transform.scale(
                                              scale: .5,
                                              child: Material(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      if (controller!
                                                          .value.isPlaying) {
                                                        controller!.pause();
                                                      } else {
                                                        controller!.play();
                                                      }
    
                                                      setState(() {});
                                                    },
                                                    icon: Icon(
                                                      controller!.value.isPlaying
                                                          ? Icons.pause
                                                          : Icons.play_arrow,
                                                      size: 35,
                                                      color:
                                                          ColorResources.colorRed,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        )),
                                    const Positioned(
                                        top: 0,
                                        right: 10,
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: ColorResources.colorWhite,
                                        ))
                                  ],
                                ),
                              ),
                              Text("Lorem Ipsum ",
                                  style: TextStyles.smallMediamTextStyle()),
                              Text("Mauris dictum, magna nin",
                                  style: TextStyles.extraPreSmallTextStyle()
                                      .copyWith(
                                          color: ColorResources.colorWhite
                                              .withOpacity(.6)))
                            ],
                          ),
                        ),
                      )),
                ],
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
                          Text("Hi, Jasika",
                              style: TextStyles.smallMediamTextStyle()),
                          Text("Lorem ipsum california 12345",
                              style: TextStyles.extraPreSmallTextStyle().copyWith(
                                  color:
                                      ColorResources.colorWhite.withOpacity(.6)))
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
                              Get.to(() => const TeacherNotificationScreen());
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
