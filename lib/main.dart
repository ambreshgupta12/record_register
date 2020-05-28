import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the top right corner debug sign
      title: 'Record Register',

      // Light theme data
      theme: ThemeData(
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
      ),

      //Dark theme data
      darkTheme: ThemeData(
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
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    changeTheme(context); // Works with system dark / light mode setting

    return Scaffold(
      body: Center(
        child: Text("Initial Data"),
      ),
    );
  }
}

void changeTheme(BuildContext context) {
  //Toggle light / dark mode theme according to system setting
  if (MediaQuery.of(context).platformBrightness == Brightness.light) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xDCDCDCDC).withOpacity(1),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFAFAFAFA),
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  } else {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0x000).withOpacity(1),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF151515),
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }
}