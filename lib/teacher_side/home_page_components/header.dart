import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:record_register/values/profile_clipper.dart';

class Header extends StatelessWidget {
  final String batchName, classStrength;
  Header(this.batchName, this.classStrength);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 2),
                child: Text(
                  batchName,
                  style: Theme.of(context).textTheme.headline5,
                )),
            Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Text(
                  "Total Strength: $classStrength",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.black54),
                  textAlign: TextAlign.start,
                ))
          ],
        ),
        Padding(
            padding: EdgeInsets.all(16),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                  shape: NeumorphicShape.concave,
                  color: Theme.of(context).backgroundColor
              ),
              child: ClipOval(
                  clipper: ProfileClipper(),
                  child: Container(
                    // color: Theme.of(context).primaryColorLight,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Icon(
                        Icons.notifications,
                        size: 28,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                  )),
            ) // Change to notifications_none icon to represent null notif.
            )
      ],
    );
  }
}
