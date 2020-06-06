//sample file
import 'package:flutter/material.dart';
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
          )
        ],
      ),
    );
  }
}

NavigationRailDestination navRailElement(String icon, String label) {
  return NavigationRailDestination(
    selectedIcon: ClipOval(
      clipper: ProfileClipper(),
      child: Image.asset(icon, fit: BoxFit.cover, height: 40),
    ),
    icon: ClipOval(
      clipper: ProfileClipper(),
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(icon, fit: BoxFit.cover, height: 40)
      ),
    ),
    label: Text('First'),
  );
}
