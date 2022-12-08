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
          topRight: Radius.circular(20)
        )
      )
    )
  );
}
