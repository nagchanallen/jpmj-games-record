import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => Colors.purple.shade500,
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => Colors.white,
        ),
        minimumSize: MaterialStateProperty.resolveWith<Size>(
            (states) => const Size(200, 40)),
        shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    ),
  );
}
