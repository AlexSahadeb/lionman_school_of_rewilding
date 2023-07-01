import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';
import 'package:lionman_school_of_rewilding/global/constants/images.dart';
import 'package:lionman_school_of_rewilding/global/style/box_decoration.dart';
import 'package:lionman_school_of_rewilding/global/style/text_styles.dart';
import 'package:lionman_school_of_rewilding/screen/dashboard/profile/my_wallet.dart';
import 'package:lionman_school_of_rewilding/widgets/appbar.dart';

class MyBankAccount extends StatefulWidget {
  MyBankAccount({super.key});

  @override
  State<MyBankAccount> createState() => _MyBankAccountState();
}

class _MyBankAccountState extends State<MyBankAccount> {
  TextEditingController amountController = TextEditingController();
  var selectBank;
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
                    Text("Bank Amount", style: TextStyles.styleText()),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    Images.africaBank,
                                    height: 30,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Africa Bank",
                                    style: TextStyles.smallMediamTextStyle()
                                        .copyWith(
                                            color: ColorResources.colorBlack,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Text(
                                    "******978",
                                    style: TextStyles.smallMediamTextStyle()
                                        .copyWith(
                                            color: ColorResources.colorBlack,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: selectBank,
                                    onChanged: (value) {
                                      selectBank = value;
                                    },
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.delete,
                                      color: ColorResources.colorRed,
                                      size: 25,
                                    ),
                                  )
                                ],
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
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorResources.colorWhite),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    Images.federalBank,
                                    height: 30,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Federal Bank",
                                    style: TextStyles.smallMediamTextStyle()
                                        .copyWith(
                                            color: ColorResources.colorBlack,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Text(
                                    "******653",
                                    style: TextStyles.smallMediamTextStyle()
                                        .copyWith(
                                            color: ColorResources.colorBlack,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: selectBank,
                                    onChanged: (value) {
                                      selectBank = value;
                                    },
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.delete,
                                      color: ColorResources.colorRed,
                                      size: 25,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
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
                            backgroundColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            // shape: RoundedRectangleBorder(
                            //     side: BorderSide(
                            //         color: ColorResources.colorWhite,
                            //         style: BorderStyle.solid),
                            //     borderRadius: BorderRadius.circular(30.r)),
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: ColorResources.colorWhite)),
                            textStyle: TextStyles.styleText()),
                        onPressed: () {},
                        child: Text(
                          "+ Add Bank",
                          style: TextStyles.styleText().copyWith(
                              color: ColorResources.colorWhite,
                              fontSize: 18.sp),
                        ),
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
                          Get.to(() => MyWallet());
                        },
                        child: Text(
                          "Withdrawa",
                          style: TextStyles.styleText().copyWith(
                              color: ColorResources.colorBlack,
                              fontSize: 18.sp),
                        ),
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
                    title: "My Bank Account",
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
