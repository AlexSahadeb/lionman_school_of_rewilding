import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/models/massage_models.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teachermassage/teacher_message_box.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';
class TeacherChatScreen extends StatelessWidget {
  TeacherChatScreen({super.key});
  TextEditingController aboutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: containerDecoration,
                padding: allPadding.padding,
                child: ListView(
                  children: List.generate(
                      messages.length,
                      (index) => TeacherMessageBox(
                            isMe: messages[index]["isMe"],
                            massage: messages[index]["message"],
                            image: messages[index]["profileImg"],
                          )),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.h,
                child: Container(
                    decoration: BoxDecoration(
                      color: ColorResources.colorWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: TextFormField(
                              // controller: controller,
                              // validator: validator,
                              // onChanged: onChanged,
                              // obscureText: obscureText,
                              // keyboardType: keyboardType,
                              style: TextStyle(
                                color: ColorResources.colorBlack,
                                fontSize: 15.sp,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                    borderSide: BorderSide.none),
                                suffixStyle: const TextStyle(fontSize: 17),
                                hintText: "Text Write hare...",
                                filled: true,
                                fillColor: ColorResources.colorWhite,
                                hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r)),
                              ),
                              child: IconButton(
                                  onPressed: () {}, icon:const Icon(Icons.send)),
                            )),
                      ],
                    )),
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
                      title: "Chat",
                      actionWidget: PopupMenuButton(
                        icon:const Icon(Icons.more_horiz),
                        onSelected: (value) {
                          if (value == 0) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                    contentPadding: const EdgeInsets.all(12),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    content: Wrap(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r)),
                                          child: Column(
                                            children: [
                                              Container(
                                                padding:const EdgeInsets.symmetric(
                                                    horizontal: 50,
                                                    vertical: 15),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Why do you want to report this use?",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyles.styleText()
                                                      .copyWith(
                                                          color: ColorResources
                                                              .colorBlack),
                                                ),
                                              ),
                                              TextFormField(
                                                controller: aboutController,
                                                validator: (p0) {},
                                                onChanged: (value) {},
                                                textAlignVertical:
                                                    TextAlignVertical.top,
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.r),
                                                      borderSide:
                                                          BorderSide.none),
                                                  suffixStyle: const TextStyle(
                                                      fontSize: 17),
                                                  hintText: "Write here...",
                                                  filled: true,
                                                  hintStyle: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: ColorResources
                                                        .colorBlack,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 35.h,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30
                                                                      .r),
                                                          gradient: const LinearGradient(
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
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 8,
                                                                    horizontal:
                                                                        40),
                                                            shape: RoundedRectangleBorder(
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
                                                                  color: ColorResources
                                                                      .colorWhite,
                                                                  fontSize:
                                                                      18.sp),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15.w,
                                                    ),
                                                    DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.r),
                                                          border: Border.all(
                                                              width: 2,
                                                              color: ColorResources
                                                                  .colorBrown)),
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            elevation: 0,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 8,
                                                                    horizontal:
                                                                        40),
                                                            shape: RoundedRectangleBorder(
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
                                                                  color: ColorResources
                                                                      .colorBrown,
                                                                  fontSize:
                                                                      18.sp),
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
                                        ),
                                      ],
                                    )));
                          }
                        },
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 0,
                            height: 15.h,
                            child: const Text(
                              "Report",
                              style:
                                  TextStyle(color: ColorResources.colorBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
