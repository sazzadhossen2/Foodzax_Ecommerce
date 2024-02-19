

import 'package:flutter/material.dart';

import 'custome_theme/appbar_theme.dart';
import 'custome_theme/bottom_sheet_theme.dart';
import 'custome_theme/checkbox_theme.dart';
import 'custome_theme/chip_theme.dart';
import 'custome_theme/elevated_button_theme.dart';
import 'custome_theme/outlined_button_theme.dart';
import 'custome_theme/text_fild_theme.dart';
import 'custome_theme/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightchipThemeData,
    appBarTheme: TAppBarTheme.lightAppbarTheme,
    checkboxTheme: TCheckboxTheme.ligthcheckboxThemeData,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemedata,
    elevatedButtonTheme: TElevatedTheme.lightElevatedTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: TTextFormFildTheme.lightinputDecoration,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkchipThemeData,
    appBarTheme: TAppBarTheme.darkAppbarTheme,
    checkboxTheme: TCheckboxTheme.darkcheckboxThemeData,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemedata,
    elevatedButtonTheme: TElevatedTheme.darkElevatedTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: TTextFormFildTheme.darkinputDecoration,
  );
}
