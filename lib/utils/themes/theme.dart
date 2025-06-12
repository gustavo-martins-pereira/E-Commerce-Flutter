import 'package:ecommerce/utils/themes/components/appbar.dart';
import 'package:ecommerce/utils/themes/components/bottom_sheet.dart';
import 'package:ecommerce/utils/themes/components/checkbox_theme.dart';
import 'package:ecommerce/utils/themes/components/chip.dart';
import 'package:ecommerce/utils/themes/components/elevated_button_theme.dart';
import 'package:ecommerce/utils/themes/components/outlined_button.dart';
import 'package:ecommerce/utils/themes/components/text_field.dart';
import 'package:ecommerce/utils/themes/components/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    brightness: Brightness.light,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    fontFamily: "Poppins",
    inputDecorationTheme: CTextFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lightTextTheme,
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    brightness: Brightness.dark,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    fontFamily: "Poppins",
    inputDecorationTheme: CTextFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    useMaterial3: true,
  );
}
