import 'package:flutter/material.dart';

import 'package:flutter_color_app/infrastructure/theme/theme_extensions.dart';

class TextTile extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String? subtitle;

  const TextTile({
    Key? key,
    required this.backgroundColor,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: context.textTheme.headlineMedium!.copyWith(
              color: context.textTheme.getTextColorBasedOnBackground(backgroundColor),
            ),
          ),
          if (subtitle != null) ...{
            Text(
              subtitle!,
              style: context.textTheme.headlineSmall!.copyWith(
                color: context.textTheme.getTextColorBasedOnBackground(backgroundColor),
              ),
            ),
          },
        ],
      ),
    );
  }
}
