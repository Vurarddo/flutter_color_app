import 'package:flutter/material.dart';

import 'package:flutter_color_app/infrastructure/theme/app_colors.dart';

class DarkTheme {
  static const _colorScheme = ColorScheme.dark(
    primary: AppColors.darkPrimary,
    inversePrimary: AppColors.darkInversePrimary,
    primaryContainer: AppColors.darkPrimaryContainer,
    onPrimary: AppColors.darkOnPrimary,
    onPrimaryContainer: AppColors.darkOnPrimaryContainer,
    secondary: AppColors.darkSecondary,
    secondaryContainer: AppColors.darkSecondaryContainer,
    onSecondary: AppColors.darkOnSecondary,
    onSecondaryContainer: AppColors.darkOnSecondaryContainer,
    tertiary: AppColors.darkTertiary,
    tertiaryContainer: AppColors.darkTertiaryContainer,
    onTertiary: AppColors.darkOnTertiary,
    onTertiaryContainer: AppColors.darkOnTertiaryContainer,
    error: AppColors.darkError,
    errorContainer: AppColors.darkErrorContainer,
    onError: AppColors.darkOnError,
    onErrorContainer: AppColors.darkOnErrorContainer,
    background: AppColors.darkBackground,
    onBackground: AppColors.darkOnBackground,
    surface: AppColors.darkSurface,
    inverseSurface: AppColors.darkInverseSurface,
    onSurface: AppColors.darkOnSurface,
    onInverseSurface: AppColors.darkOnInverseSurface,
    surfaceVariant: AppColors.darkSurfaceVariant,
    onSurfaceVariant: AppColors.darkOnSurfaceVariant,
    surfaceTint: AppColors.darkSurfaceTint,
    outline: AppColors.darkOutline,
    shadow: AppColors.shadow,
  );

  static ThemeData getTheme(BuildContext context) {
    final themeData = ThemeData.from(
      useMaterial3: true,
      colorScheme: _colorScheme,
    );

    return themeData.copyWith(
      primaryColorDark: AppColors.darkPrimary,
      iconTheme: const IconThemeData(color: AppColors.darkOnSurfaceVariant),
    );
  }
}
