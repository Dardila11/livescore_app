import 'package:flutter/material.dart';

/* static const  gradientOrange = Gradient.linear(Offset(0, 0), Offset(100, 100), [
    Color(0xFFF4A58A),
    Color(0xFFED6B4E)
  ]); */

abstract class AppColors {
  static const white = Color(0xffffffff);
  static const grey = Color(0xffC4C4C4);
  static const darkGrey = Color(0xff65656B);
  static const blue = Color(0xff246BFD);
  static const greyNavy = Color(0xff222232);
  static const darkGreyNavy = Color(0xff181829);
}

class AppTheme {
  static final visualDensity = VisualDensity.adaptivePlatformDensity;
  static const white = Color(0xffffffff);
  static const grey = Color(0xffC4C4C4);
  static const darkGrey = Color(0xff65656B);
  static const blue = Color(0xff246BFD);
  static const greyNavy = Color(0xff222232);
  static const darkGreyNavy = Color(0xff181829);

  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.darkGreyNavy,
        backgroundColor: AppColors.greyNavy,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
          backgroundColor: AppColors.darkGreyNavy,
          foregroundColor: AppColors.white,
        ),
        primaryTextTheme: const TextTheme(
          headline1: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          subtitle1: TextStyle(
            color: AppColors.darkGrey,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      );
}
