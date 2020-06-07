import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        // top: 8,
        bottom: 16,
      ),
      child: Row(children: <Widget>[
        Expanded(
          child: Neumorphic(
            drawSurfaceAboveChild: true,
            style: NeumorphicStyle(
              // shape: NeumorphicShape.concave,
            ),
            child: Container(
              color: Theme.of(context).primaryColorDark,
              height: 100,
              
            ),
          ),
        ),
      ]),
    );
  }
}
