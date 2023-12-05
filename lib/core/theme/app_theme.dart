import 'package:demo/common/resources/ColorsCustom.dart';
import 'package:flutter/material.dart';
import 'package:demo/common/resources/Strings.dart';
import '../style/app_style.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightAppTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Color(0xFFF4511E),
        centerTitle: true,
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF4511E), width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: enableBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        border: inputBorder,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF4511E),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFF4511E),
      ),
      fontFamily: Strings.appFont,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black54,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      timePickerTheme: TimePickerThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          side: BorderSide(color: Colors.grey, width: 2),
        ),
        dialHandColor: const Color(0xFFF4511E),
        hourMinuteColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? const Color(0xFFF4511E)
                : Colors.black12),
        hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? Colors.black54
                : Colors.grey),
        hourMinuteShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black12),
        ),
        dayPeriodBorderSide: const BorderSide(color: Colors.grey),
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        dayPeriodColor: Colors.transparent,
        dayPeriodTextColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? const Color(0xFFF4511E)
                : Colors.black12),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)))));

  static ThemeData lightTheme2 = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      hintStyle: const TextStyle(fontSize: 14),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
    textTheme: const TextTheme(
        displayMedium: TextStyle(
          letterSpacing: -1.5,
          fontSize: 48,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          letterSpacing: -1.0,
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          letterSpacing: -1.0,
          fontSize: 32,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          letterSpacing: -1.0,
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          letterSpacing: -1.0,
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          letterSpacing: -1.0,
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(
            color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
        labelSmall: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        labelLarge: TextStyle(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400)),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsCustom.gray900,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.grey,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomAppBarColor: ColorsCustom.gray800,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
      hintStyle: const TextStyle(
        fontSize: 14,
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
      displayMedium: TextStyle(
          letterSpacing: -1.5,
          fontSize: 48,
          color: Colors.grey.shade50,
          fontWeight: FontWeight.bold),
      displaySmall: TextStyle(
          letterSpacing: -1.0,
          fontSize: 40,
          color: Colors.grey.shade50,
          fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(
          letterSpacing: -1.0,
          fontSize: 32,
          color: Colors.grey.shade50,
          fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(
          letterSpacing: -1.0,
          color: Colors.grey.shade50,
          fontSize: 28,
          fontWeight: FontWeight.w600),
      titleLarge: TextStyle(
          letterSpacing: -1.0,
          color: Colors.grey.shade50,
          fontSize: 24,
          fontWeight: FontWeight.w500),
      titleMedium: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 18,
          fontWeight: FontWeight.w500),
      titleSmall: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 16,
          fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 14,
          fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      labelSmall: const TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      labelLarge: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 12,
          fontWeight: FontWeight.w500),
      overline: TextStyle(
          color: Colors.grey.shade50,
          fontSize: 10,
          fontWeight: FontWeight.w400),
    ),
  );
}
