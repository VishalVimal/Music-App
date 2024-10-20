import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide:  BorderSide(
          color: Pallete.borderColor,
          width: 3,
        )
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(
          color: Pallete.borderColor,
          width: 3,
        )
      ),
    ), 
  );
}
