import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Color(0xff2297F4),
    primaryColorDark: Colors.black12,
    backgroundColor: Colors.white,
    primaryIconTheme: IconThemeData(
      color: Colors.black87,
    ),
    textTheme: TextTheme(
        subtitle1: TextStyle(
          color: Colors.black,
        ),
        headline6: TextStyle(
          color: Colors.black,
        )),
        buttonColor: Colors.white
  );
}

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    backgroundColor: Colors.black,
    primaryColorDark: Colors.white12,
    primaryIconTheme: IconThemeData(
      color: Colors.white70,
    ),
    textTheme: TextTheme(
        subtitle1: TextStyle(
          color: Color(0xf1f1f1f1),
        ),
        headline6: TextStyle(
          color: Color(0xf1f1f1f1),
        )),
  );
}
