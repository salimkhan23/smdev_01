import 'package:flutter/material.dart';

ThemeData darkThemes = ThemeData(
  primaryColor: Colors.grey,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.grey,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 161, 159, 159),
  textTheme: const TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade600),
  ),
);
