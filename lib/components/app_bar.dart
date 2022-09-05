// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: Row(
      children: [
        ThemeIcon(),
      ],
    ),
  );
}

class ThemeIcon extends StatefulWidget {
  ThemeIcon({Key? key}) : super(key: key);

  @override
  State<ThemeIcon> createState() => _ThemeIconState();
}

class _ThemeIconState extends State<ThemeIcon> {
  bool _checkTheme = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _checkTheme = !_checkTheme;
          _checkTheme
              ? AdaptiveTheme.of(context).setDark()
              : AdaptiveTheme.of(context).setLight();
        });
      },
      icon: Icon(_checkTheme ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
