import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Assignments",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Add",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Theme.of(context).primaryColor),
                      )),
                  Text("More")
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Lorem ipsum dummy text", "1:52, Today", Icons.filter_4),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Sample title", "2:28, Yesterday", Icons.filter_3),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Something over here", "00:22, June 7, 2020", Icons.filter_2),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Do nothing", "4:02, June 6, 2020", Icons.filter_1),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Archieves",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Add",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Theme.of(context).primaryColor),
                      )),
                  Text("More")
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Light", "Today", Icons.lightbulb_outline),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Day 100 with Dart", "Yesterday", Icons.computer),
          SizedBox(height: 16),
          assignmentListTile(
              context, "A Chapter", "Yesterday", Icons.description),
          SizedBox(height: 16),
          assignmentListTile(
              context, "Blank space", "June 7, 2020", Icons.bubble_chart),
        ],
      ),
    );
  }
}

Neumorphic assignmentListTile(
    BuildContext context, String titleText, String timeStr, IconData iconData) {
  return Neumorphic(
    padding: EdgeInsets.all(16),
    style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
        depth: 2,
        color: Theme.of(context).primaryColorLight
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          color: Theme.of(context).primaryIconTheme.color,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(titleText,
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontWeight: FontWeight.w500)),
              Text(timeStr,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.black54,
                      )),
            ],
          ),
        )
      ],
    ),
  );
}
