import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:record_register/initial_sceens/select_stu_teach.dart';
import 'package:record_register/initial_sceens/signin.dart';
import 'package:record_register/initial_sceens/signup.dart';
import 'package:record_register/teacher_side/t_home_page.dart';
import 'package:record_register/values/theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the top right corner debug sign
      title: 'Record Register',

      // Light theme data: "values/theme_data"
      theme: lightTheme(),
      //Dark theme data: ""values/theme_data""
      darkTheme: darkTheme(),

      home: MyHomePage() // DO NOT CHANGE ANYTHING OVER HERE... [Use line 46 to change the layout]
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {

    changeTheme(context); // Works with system dark / light mode setting

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: PageStorage(
        bucket: _bucket,
         child: HomePageT(), // Change this value to test a layout..
      )
    );
  }
}

void changeTheme(BuildContext context){
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