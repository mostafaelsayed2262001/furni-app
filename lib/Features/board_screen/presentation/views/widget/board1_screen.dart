import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furni_app/constants.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';

PageViewModel pageViewModelOne(){
  return PageViewModel(
    decoration: PageDecoration(
      bodyAlignment: Alignment.centerLeft,

      titlePadding: EdgeInsets.only(left: 16),
      bodyPadding: EdgeInsets.only(top:8, left: 16, ),
      contentMargin: EdgeInsets.all(0),
      bodyFlex: 1,
      imagePadding: EdgeInsets.zero,

      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(fontSize: 16),
    ),
    backgroundImage: "assets/dashboard/dashboard1.png",
    titleWidget: Row(
      children: [
        Text(
          "Discover ",
          style: TextStyle(color: Colors.black, fontSize: 20.sp),
        ),
        Text(
          "FurniHome",
          style: TextStyle(color: kSecondaryColor, fontSize: 20.sp),
        ),
      ],
    ),
    bodyWidget: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find What your hime need ,\nall furniture you need ,Rooms ,\nall styles and much ideas.",
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    ),
  );
}