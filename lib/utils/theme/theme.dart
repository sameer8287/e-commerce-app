import 'package:e_commerce_app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TestThemee.lightTextTheme,
    chipTheme: ChipThemee.lightThemeData,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: AppBarThemee.lightAppBarTheme,
    checkboxTheme: CheckBoxThemee.lightCheckBoxTheme,
    bottomSheetTheme: BottomSheetThemee.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemee.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemee.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemee.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TestThemee.darkTextTheme,
    chipTheme: ChipThemee.darkThemeData,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: AppBarThemee.darkAppBarTheme,
    checkboxTheme: CheckBoxThemee.darkCheckBoxTheme,
    bottomSheetTheme: BottomSheetThemee.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemee.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemee.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemee.darkInputDecorationTheme,
  );
}
