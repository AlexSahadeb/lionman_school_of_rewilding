import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/teacher_dashboard/teacher_profile/teacher_my_bank_account.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';

class TeacherMyWallet extends StatelessWidget {
  TeacherMyWallet({super.key});
  TextEditingController amountController = TextEditingController();

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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                          SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
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
                                Icons.folder,
                                size: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Current Balance",
                            style: TextStyles.smallMediamTextStyle().copyWith(
                                color: ColorResources.colorBlack,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "\$180.00",
                            style: TextStyles.smallMediamTextStyle().copyWith(
                                color: ColorResources.colorBlack,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Enter Amount", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          color: ColorResources.colorBlack, fontSize: 17),
                      controller: amountController..text = "\$50.00",
                      validator: (p0) {},
                      onChanged: (value) {},
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: ColorResources.colorWhite,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: ColorResources.colorWhite,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.r)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {
                          Get.to(() => TeacherMyBankAccount());
                        },
                        child: Text(
                          "Withdrawa Amount",
                          style: TextStyles.styleText().copyWith(
                              color: ColorResources.colorBlack,
                              fontSize: 18.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mark Jack",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorBlack,
                                ),
                              ),
                              Text(
                                "02-08-2023",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Order Number: ",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                              Text(
                                "#99923834",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\25.50",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorBlack,
                                ),
                              ),
                              Text(
                                "Refund",
                                style: TextStyles.smallMediamTextStyle()
                                    .copyWith(
                                        color: ColorResources.colorRed,
                                        fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mark Jack",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorBlack,
                                ),
                              ),
                              Text(
                                "02-08-2023",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Order Number: ",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                              Text(
                                "#99923834",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\25.50",
                                style:
                                    TextStyles.smallMediamTextStyle().copyWith(
                                  color: ColorResources.colorBlack,
                                ),
                              ),
                              Text(
                                "Withdraw",
                                style: TextStyles.smallMediamTextStyle()
                                    .copyWith(
                                        color: ColorResources.colorGreen,
                                        fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
                    title: "My Wallet",
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
