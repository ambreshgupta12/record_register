import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Color(0xff2297F4),
    primaryColorLight: Color(0xffebf0f7), // change it to some light color
    primaryColorDark: Color(0xffe0e5ec),
    // primaryColorDark: Color(0xfff3f3f3),
    backgroundColor: Colors.white,
    primaryIconTheme: IconThemeData(
      color: Colors.black54,
    ),
    textTheme: TextTheme(
        subtitle1: TextStyle(
          color: Colors.black,
        ),
        headline6: TextStyle(
          color: Colors.black,
        ),
        headline5: TextStyle(
          // color: Colors.black54,
          color: Colors.black54,
          fontWeight: FontWeight.w600
        )
    ),
        buttonColor: Colors.white
  );
}

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Color(0xff2297F4),
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
