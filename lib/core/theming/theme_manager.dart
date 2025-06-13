import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/font_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData(
      // Main Colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.primaryDark,
      colorScheme: const ColorScheme.light(
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        error: ColorManager.error,
        background: ColorManager.background,
        surface: ColorManager.surface,
      ),

      // Card Theme
      cardTheme: const CardTheme(
        color: ColorManager.cardBg,
        shadowColor: ColorManager.cardShadow,
        elevation: AppSize.s4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
        ),
      ),

      // App Bar Theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.cardShadow,
        titleTextStyle: getRegularStyle(
          fontSize: FontSize.s20,
          color: ColorManager.surface,
        ),
        iconTheme: const IconThemeData(color: ColorManager.surface),
      ),

      // Button Theme
      buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        buttonColor: ColorManager.primary,
        disabledColor: ColorManager.textHint,
        splashColor: ColorManager.primaryLight,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
            color: ColorManager.surface,
            fontSize: FontSize.s16,
          ),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
          elevation: AppSize.s2,
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p16,
            horizontal: AppPadding.p16,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: getMediumStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s16,
          ),
          padding: const EdgeInsets.all(AppPadding.p8),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p12),
        hintStyle: getRegularStyle(
          color: ColorManager.textHint,
          fontSize: FontSize.s16,
        ),
        labelStyle: getMediumStyle(
          color: ColorManager.textSecondary,
          fontSize: FontSize.s16,
        ),
        errorStyle: getRegularStyle(
          color: ColorManager.error,
          fontSize: FontSize.s14,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.divider,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        headlineLarge: getBoldStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s28,
        ),
        headlineMedium: getSemiBoldStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s24,
        ),
        headlineSmall: getSemiBoldStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s20,
        ),
        titleLarge: getMediumStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s20,
        ),
        titleMedium: getMediumStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s18,
        ),
        titleSmall: getMediumStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s16,
        ),
        bodyLarge: getRegularStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s16,
        ),
        bodyMedium: getRegularStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSize.s14,
        ),
        bodySmall: getRegularStyle(
          color: ColorManager.textSecondary,
          fontSize: FontSize.s12,
        ),
        labelLarge: getMediumStyle(
          color: ColorManager.primary,
          fontSize: FontSize.s16,
        ),
      ),

      // Misc
      scaffoldBackgroundColor: ColorManager.background,
      brightness: Brightness.light,
      fontFamily: FontConstants.fontFamily,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      // Main Colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.primaryDark,
      colorScheme: const ColorScheme.dark(
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        error: ColorManager.error,
        background: ColorManager.backgroundDark,
        surface: ColorManager.surfaceDark,
      ),

      // Card Theme
      cardTheme: const CardTheme(
        color: ColorManager.cardBgDark,
        shadowColor: ColorManager.cardShadowDark,
        elevation: AppSize.s4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
        ),
      ),

      // App Bar Theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.backgroundDark,
        elevation: AppSize.s4,
        shadowColor: ColorManager.cardShadowDark,
        titleTextStyle: getRegularStyle(
          fontSize: FontSize.s20,
          color: ColorManager.textPrimaryDark,
        ),
        iconTheme: const IconThemeData(color: ColorManager.textPrimaryDark),
      ),

      // Button Theme
      buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        buttonColor: ColorManager.primary,
        disabledColor: ColorManager.textHintDark,
        splashColor: ColorManager.primaryLight,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
            color: ColorManager.textPrimaryDark,
            fontSize: FontSize.s16,
          ),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
          elevation: AppSize.s2,
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p16,
            horizontal: AppPadding.p16,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: getMediumStyle(
            color: ColorManager.secondary,
            fontSize: FontSize.s16,
          ),
          padding: const EdgeInsets.all(AppPadding.p8),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p12),
        hintStyle: getRegularStyle(
          color: ColorManager.textHintDark,
          fontSize: FontSize.s16,
        ),
        labelStyle: getMediumStyle(
          color: ColorManager.textSecondaryDark,
          fontSize: FontSize.s16,
        ),
        errorStyle: getRegularStyle(
          color: ColorManager.error,
          fontSize: FontSize.s14,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.dividerDark,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.secondary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.secondary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        headlineLarge: getBoldStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s28,
        ),
        headlineMedium: getSemiBoldStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s24,
        ),
        headlineSmall: getSemiBoldStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s20,
        ),
        titleLarge: getMediumStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s20,
        ),
        titleMedium: getMediumStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s18,
        ),
        titleSmall: getMediumStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s16,
        ),
        bodyLarge: getRegularStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s16,
        ),
        bodyMedium: getRegularStyle(
          color: ColorManager.textPrimaryDark,
          fontSize: FontSize.s14,
        ),
        bodySmall: getRegularStyle(
          color: ColorManager.textSecondaryDark,
          fontSize: FontSize.s12,
        ),
        labelLarge: getMediumStyle(
          color: ColorManager.secondary,
          fontSize: FontSize.s16,
        ),
      ),

      // Misc
      scaffoldBackgroundColor: ColorManager.backgroundDark,
      brightness: Brightness.dark,
      fontFamily: FontConstants.fontFamily,
      useMaterial3: true,
    );
  }
}
