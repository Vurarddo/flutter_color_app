import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_color_app/features/color/presentation/cubit_color/cubit/color_cubit.dart';
import 'package:flutter_color_app/infrastructure/theme/theme_extensions.dart';

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
            body: _TextTile(
              backgroundColor: color,
            ),
          ),
        );
      },
    );
  }
}

class _TextTile extends StatelessWidget {
  final Color backgroundColor;

  const _TextTile({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello there',
            style: context.textTheme.headlineMedium!.copyWith(
              color: context.textTheme.getTextColorBasedOnBackground(backgroundColor),
            ),
          ),
          Text(
            '(with Cubit)',
            style: context.textTheme.headlineSmall!.copyWith(
              color: context.textTheme.getTextColorBasedOnBackground(backgroundColor),
            ),
          ),
        ],
      ),
    );
  }
}
