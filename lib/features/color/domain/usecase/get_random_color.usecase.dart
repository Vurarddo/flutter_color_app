import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetRandomColorUsecase {
  GetRandomColorUsecase();

  Color call() {
    final colorValue = (math.Random().nextDouble() * 0xFFFFFF).toInt();
    return Color(colorValue).withOpacity(1.0);
  }
}
