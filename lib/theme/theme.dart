import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: AppTextStyle.fontFamily,
      colorScheme: ColorScheme.fromSwatch(
              primarySwatch:
                  AppColors.createMaterialColor(AppColors.primaryColor))
          .copyWith(secondary: AppColors.secondaryColor),
      //if we need to change some of the parameters
      // textTheme: TextTheme(
      //   headline1: AppTextStyle.headline1,
      //   bodyText2: AppTextStyle.appBodyText,
      // )
    );
  }

  // on DarkMode the Swatch parameter is not working
  // https://github.com/flutter/flutter/issues/19089
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      toggleableActiveColor:
          AppColors.createMaterialColor(AppColors.primaryColor).shade500,

      // this can all be copied, waiting for verification
      //fontFamily: AppTextStyle.fontFamily,
      inputDecorationTheme: ligthTheme.inputDecorationTheme,
      colorScheme: ColorScheme.fromSwatch(
              primarySwatch:
                  AppColors.createMaterialColor(AppColors.primaryColor))
          .copyWith(secondary: AppColors.secondaryColor),
    );
  }
}
