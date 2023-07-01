import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/auth/signup/education_details.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/home/edit_vedio_details.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
import 'package:lionman_school_of_rewilding/widgets/custom_text_field.dart';
import 'package:lionman_school_of_rewilding/widgets/dialog_button.dart';
import 'package:lionman_school_of_rewilding/widgets/submit_Button.dart';
import 'package:video_player/video_player.dart';

class VideoDetails extends StatefulWidget {
  VideoDetails({super.key});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
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
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                        child: AspectRatio(
                          // aspectRatio: controller!.value.aspectRatio,

                          aspectRatio: 16 / 9,
                          child: Stack(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(12.r),
                                  child: VideoPlayer(controller!)),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  left: 10,
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
                                              color: ColorResources.colorWhite,
                                              size: 16,
                                            ),
                                            Text(
                                              "12.5",
                                              style: TextStyles
                                                      .extraPreSmallTextStyle()
                                                  .copyWith(fontSize: 11.sp),
                                            ),
                                            Text("k")
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            height: 30.h,
                                            padding: const EdgeInsets.all(3),
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                color:
                                                    ColorResources.colorBlack,
                                                shape: BoxShape.circle),
                                            child: const Icon(
                                              Icons.fullscreen,
                                              size: 25,
                                              color: ColorResources.colorWhite,
                                            )),
                                      )
                                    ],
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Transform.scale(
                                    scale: .2,
                                    child: FittedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (controller!.value.isPlaying) {
                                            controller!.pause();
                                          } else {
                                            controller!.play();
                                          }

                                          setState(() {});
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(3),
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                color:
                                                    ColorResources.colorWhite,
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              controller!.value.isPlaying
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                              size: 30,
                                              color: ColorResources.colorRed,
                                            )),
                                      ),
                                    ),
                                  )),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                child: VideoProgressIndicator(controller!,
                                    allowScrubbing: true,
                                    colors: const VideoProgressColors(
                                      backgroundColor:
                                          ColorResources.colorWhite,
                                      bufferedColor: ColorResources.colorBlack,
                                    )),
                              )
                            ],
                          ),
                        ),
                      )),
                  Text("Lorem Ipsum", style: TextStyles.largeTextStyle()),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Description", style: TextStyles.extraBoldStyleText()),
                  Expanded(
                      flex: 6,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto ",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia.",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem!",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque.",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid.",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora.",
                              style: TextStyles.styleText(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                                "Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. ",
                                style: TextStyles.styleText())
                          ],
                        ),
                      ))
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
                  child: CustomAppbar(
                      title: "Video Details",
                      actionWidget: PopupMenuButton<int>(
                        icon: const Icon(Icons.more_horiz),
                        onSelected: (result) {
                          if (result == 0) {
                            Get.to(() => EditVedioDetails());
                          }
                          if (result == 1) {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        topRight: Radius.circular(20.r))),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            topRight: Radius.circular(20.r))),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: const Icon(
                                                Icons.close,
                                                size: 30,
                                              ),
                                            )),
                                        Align(
                                          alignment: Alignment.center,
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
                                                Icons.delete,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Are you sure want to delete this video?",
                                            textAlign: TextAlign.center,
                                            style: TextStyles.styleText()
                                                .copyWith(
                                                    color: ColorResources
                                                        .colorBlack),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              DecoratedBox(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    gradient:
                                                        const LinearGradient(
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter,
                                                            colors: [
                                                          ColorResources
                                                              .colorBrown,
                                                          ColorResources
                                                              .colorYellow
                                                        ])),
                                                child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Colors
                                                          .transparent,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8,
                                                          horizontal: 40),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(30
                                                                          .r)),
                                                      textStyle: TextStyles
                                                          .styleText()),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Yes",
                                                    style: TextStyles
                                                            .styleText()
                                                        .copyWith(
                                                            color:
                                                                ColorResources
                                                                    .colorWhite,
                                                            fontSize: 18.sp),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30.w,
                                              ),
                                              DecoratedBox(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: ColorResources
                                                            .colorBrown)),
                                                child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor: Colors
                                                          .transparent,
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8,
                                                          horizontal: 40),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(30
                                                                          .r)),
                                                      textStyle: TextStyles
                                                          .styleText()),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "No",
                                                    style: TextStyles
                                                            .styleText()
                                                        .copyWith(
                                                            color:
                                                                ColorResources
                                                                    .colorBrown,
                                                            fontSize: 18.sp),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        )
                                      ],
                                    ),
                                  );
                                });
                          }
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 0,
                            child: Text(
                              "Edit",
                              style:
                                  TextStyle(color: ColorResources.colorBlack),
                            ),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: Text(
                              "Delete",
                              style:
                                  TextStyle(color: ColorResources.colorBlack),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
