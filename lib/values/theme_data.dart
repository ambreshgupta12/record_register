import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    primaryColorDark: Color(0xFAFAFAFA),
    backgroundColor: Colors.white,
    primaryIconTheme: IconThemeData(
      color: Colors.black87,
    ),
    textTheme: TextTheme(
        subhead: TextStyle(
          color: Colors.black,
        ),
        title: TextStyle(
          color: Colors.black,
        )),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    backgroundColor: Colors.black,
    primaryColorDark: Color(0xFF151515),
    primaryIconTheme: IconThemeData(
      color: Colors.white70,
    ),
    textTheme: TextTheme(
        subhead: TextStyle(
          color: Color(0xf1f1f1f1),
        ),
        title: TextStyle(
          color: Color(0xf1f1f1f1),
        )),
  );
}
