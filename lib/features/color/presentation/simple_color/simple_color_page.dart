import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_color_app/features/color/domain/usecase/get_random_color.usecase.dart';
import 'package:flutter_color_app/features/color/presentation/widgets/text_tile.dart';
import 'package:flutter_color_app/infrastructure/theme/theme_extensions.dart';

const String _helloThereText = 'Hello there';

@RoutePage()
class SimpleColorPage extends StatefulWidget {
  const SimpleColorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleColorPage> createState() => _SimpleColorPageState();
}

class _SimpleColorPageState extends State<SimpleColorPage> {
  late Color _backgroundColor;

  GetRandomColorUsecase get _getRandomColorUsecase => GetIt.I<GetRandomColorUsecase>();

  @override
  void initState() {
    _backgroundColor = _getRandomColorUsecase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onChangedColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: TextTile(
          backgroundColor: _backgroundColor,
          title: _helloThereText,
        ),
      ),
    );
  }

  void _onChangedColor() {
    setState(() => _backgroundColor = _getRandomColorUsecase());
  }
}
