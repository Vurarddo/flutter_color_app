import 'package:flutter/material.dart';

import 'package:flutter_color_app/infrastructure/theme/app_colors.dart';

class LightTheme {
  const LightTheme._();

  static const _colorScheme = ColorScheme.light(
    primary: AppColors.primary,
    inversePrimary: AppColors.darkInversePrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimary: AppColors.onPrimary,
    onPrimaryContainer: AppColors.onPrimaryContainer,
    secondary: AppColors.secondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondary: AppColors.onSecondary,
    onSecondaryContainer: AppColors.onSecondaryContainer,
    tertiary: AppColors.tertiary,
    tertiaryContainer: AppColors.tertiaryContainer,
    onTertiary: AppColors.onTertiary,
    onTertiaryContainer: AppColors.onTertiaryContainer,
    error: AppColors.error,
    errorContainer: AppColors.errorContainer,
    onError: AppColors.onError,
    onErrorContainer: AppColors.onErrorContainer,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    surface: AppColors.surface,
    inverseSurface: AppColors.inverseSurface,
    onSurface: AppColors.onSurface,
    surfaceVariant: AppColors.surfaceVariant,
    onSurfaceVariant: AppColors.onSurfaceVariant,
    surfaceTint: AppColors.surfaceTint,
    onInverseSurface: AppColors.onInverseSurface,
    outline: AppColors.outline,
    shadow: AppColors.shadow,
  );

  static ThemeData getTheme(BuildContext context) {
    final themeData = ThemeData.from(
      useMaterial3: true,
      colorScheme: _colorScheme,
    );

    return themeData.copyWith(
      primaryColorDark: AppColors.primary,
      iconTheme: const IconThemeData(color: AppColors.outline),
    );
  }
}
