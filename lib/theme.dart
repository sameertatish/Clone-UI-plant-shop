// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarLightTheme,
    primaryColor: kPrimaryLightColor,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarDarkTheme,
    backgroundColor: kBackgroundDarkColor,
  );
}

AppBarTheme appBarLightTheme =
    AppBarTheme(color: kPrimaryLightColor, elevation: 0);
AppBarTheme appBarDarkTheme =
    AppBarTheme(color: kPrimaryDarkColor, elevation: 0);
