// ignore_for_file: prefer_const_constructors
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: themeData(context),
      dark: darkThemeData(context),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: HomeScreen(),
      ),
    );
  }
}
