import 'package:flutter/material.dart';

ThemeData lightThemes = ThemeData(
  primaryColor: Color.fromARGB(255, 144, 201, 136),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 144, 201, 136),
    titleTextStyle:
        TextStyle(color: Color.fromARGB(255, 46, 6, 6), fontSize: 20),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(),
    button: TextStyle(),
    headline1: TextStyle(),
    headline2: TextStyle(),
    bodyText2: TextStyle(),
    subtitle1: TextStyle(),
    subtitle2: TextStyle(),
  ),
  scaffoldBackgroundColor: Colors.grey.shade300,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 144, 201, 136)),
  ),
);
