import 'package:flutter/material.dart';
import 'package:lionman_school_of_rewilding/global/constants/color_resources.dart';

BoxDecoration containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(0),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorResources.colorBrown,
      ColorResources.colorYellow,
    ],
  ),
);

Padding allPadding =
    const Padding(padding: EdgeInsets.only(top: 50, left: 20, right: 20));
