import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_color_app/features/color/domain/usecase/get_random_color.usecase.dart';

@injectable
class ColorCubit extends Cubit<Color> {
  final GetRandomColorUsecase _getRandomColorUsecase;

  ColorCubit(this._getRandomColorUsecase) : super(Colors.white) {
    changeBackgroundColor();
  }

  void changeBackgroundColor() {
    final color = _getRandomColorUsecase();
    emit(color);
  }
}
