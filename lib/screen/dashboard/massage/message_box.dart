import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';

class MessageBox extends StatelessWidget {
  const MessageBox(
      {super.key,
      required this.massage,
      required this.image,
      required this.isMe});
  final String massage;
  final String image;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
              child: Container(
            decoration: BoxDecoration(
                color: ColorResources.colorWhite,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r))),
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                massage,
                style: const TextStyle(color: ColorResources.colorBlack),
              ),
            ),
          )),
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(image),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            width: 5.w,
          ),
          Flexible(
              child: Container(
            decoration: BoxDecoration(
                color: ColorResources.colorBlack.withOpacity(.3),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                    topRight: Radius.circular(30.r))),
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(massage),
            ),
          ))
        ],
      );
    }
  }
}
