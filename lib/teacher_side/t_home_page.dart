//sample file
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:record_register/teacher_side/home_page_components/dashboard.dart';
import 'package:record_register/teacher_side/home_page_components/header.dart';
import 'package:record_register/values/flutter_icons_data.dart';
import 'package:record_register/values/profile_clipper.dart';

class HomePageT extends StatefulWidget {
  @override
  _HomePageTState createState() => _HomePageTState();
}

class _HomePageTState extends State<HomePageT> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          NavigationRail(
              elevation: 1,
              leading: IconButton(
                icon: Icon(
                  CupertinoIcons.person_solid,
                  size: 32,
                ), // change icon to third party Icon.
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () {},
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.add,
                  size: 32,
                ), // change icon to third party Icon.
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () {},
              ),
              backgroundColor: Theme.of(context).backgroundColor,
              minWidth: 64,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.none,
              destinations: [
                // Static for now! Would gonna fetch the number of elements from firebase
                // image url and label is also user based...
                navRailElement("images/googleLogo.png", "first"),
                navRailElement("images/googleLogo.png", "second"),
                navRailElement("images/googleLogo.png", "third"),
              ],
            ),
          VerticalDivider(
            thickness: 0.8,
            width: 1,
            color: Theme.of(context).primaryColorDark,
          ),
          Expanded(
            child: Container(
                color: Theme.of(context)
                    .primaryColorDark, // Test it with BackgroundColor when UI gets completed.
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Header("PKTYR2020", "28"), // HEader file initialized here
                        Dashboard()
                      ]),
                ),
              ),
          ),
        ],
      ),
    );
  }
}


// Run in loop to achieve infinite number of list elements
NavigationRailDestination navRailElement(String icon, String label) {
  return NavigationRailDestination(
    selectedIcon: Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
        depth: -10
      ),
          child: ClipOval(
        clipper: ProfileClipper(),
        child: Image.asset(icon, fit: BoxFit.cover, height: 40),
      ),
    ),
    icon: Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
        shape: NeumorphicShape.concave,
      ),
          child: ClipOval(
          clipper: ProfileClipper(),
          child: Opacity(
        opacity: 1,
        child: Image.asset(icon, fit: BoxFit.cover, height: 40)),
        ),
    ),
    label: Text('First'),
  );
}
