import 'package:flutter/material.dart';

class BrightnessUtil {
  const BrightnessUtil._();

  static double calculateBrightness(Color color) {
    return (color.red * 0.299 + color.green * 0.587 + color.blue * 0.114) / 255;
  }
}
