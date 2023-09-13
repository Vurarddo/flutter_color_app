import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_color_app/features/color/presentation/cubit_color/cubit/color_cubit.dart';
import 'package:flutter_color_app/features/color/presentation/widgets/text_tile.dart';
import 'package:flutter_color_app/infrastructure/theme/theme_extensions.dart';

const String _helloThereText = 'Hello there';
const String withCubitText = 'with Cubit';

@RoutePage()
class CubitColorPage extends StatefulWidget implements AutoRouteWrapper {
  const CubitColorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ColorCubit>(
      create: (context) => context.read<GetIt>().get(),
      child: this,
    );
  }

  @override
  State<CubitColorPage> createState() => _CubitColorPageState();
}

class _CubitColorPageState extends State<CubitColorPage> {
  void _onChangedColor() {
    final cubit = context.read<ColorCubit>();
    cubit.changeBackgroundColor();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, Color>(
      builder: (context, color) {
        return GestureDetector(
          onTap: _onChangedColor,
          child: Scaffold(
            backgroundColor: color,
            body: TextTile(
              backgroundColor: color,
              title: _helloThereText,
              subtitle: '($withCubitText)',
            ),
          ),
        );
      },
    );
  }
}
