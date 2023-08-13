import 'package:flutter/material.dart';

import 'package:flutter/scheduler.dart';

import '../Color/colors.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
   static final Gradient grayBacks= LinearGradient(
    colors: [Color(0xFF9A8B7B), Color(0xFF6D6D6D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final Gradient grayWhiteWithImage = LinearGradient(
    colors: [Color(0xFFBDC3C7), Color(0xFFFFFFFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.5], // You can adjust the stop values as needed
    tileMode: TileMode.repeated,
    // Add your image as a stop
    // Example:
    // tileMode: Image.asset('assets/your_image.png'),
  );

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
      backgroundColor: lightBackgroundColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
      ),
      textTheme: TextTheme(button: TextStyle(color: lightTextColor)));

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    backgroundColor: darkBackgroundColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      button: TextStyle(color: darkTextColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
    ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  Color get suncolor => const Color(0xFFfdd835);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ?serviceback : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}