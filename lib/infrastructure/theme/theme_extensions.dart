import 'package:flutter/material.dart';

import 'package:flutter_color_app/utils/brightness_util.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }

  TextTheme get textTheme {
    final theme = Theme.of(this);
    return theme.textTheme;
  }

  ColorScheme get colorScheme {
    final theme = Theme.of(this);
    return theme.colorScheme;
  }
}

extension TextThemeExtension on TextTheme {
  Color getTextColorBasedOnBackground(Color backgroundColor) {
    double brightness = BrightnessUtil.calculateBrightness(backgroundColor);

    double threshold = 0.5;

    return brightness < threshold ? Colors.white : Colors.black;
  }
}
