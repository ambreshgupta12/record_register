import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Dashboard extends StatelessWidget {
  final int submittedAssignment, totalAssignment;
  Dashboard(this.submittedAssignment, this.totalAssignment);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        // top: 8,
        bottom: 16,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          //----------------------------------First container------------------------------------------------------------
          Neumorphic(
            drawSurfaceAboveChild: true,
            style: NeumorphicStyle(
                depth: -4,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(16))
                // shape: NeumorphicShape.concave,

                ),
            child: Container(
              color: Theme.of(context).primaryColor,
              width: 250,
              height: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Opacity(
                          opacity: 0.9,
                          child: Text(
                            "Current\nAssignment",
                            softWrap: true,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).backgroundColor),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 16,
                                          bottom: 8),
                                      child: NeumorphicProgress(
                                        percent: submittedAssignment /
                                            totalAssignment,
                                      )),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Text(
                                      "$submittedAssignment / $totalAssignment",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .backgroundColor
                                                  .withOpacity(0.8)),
                                    ))
                              ]),
                        ),
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                                shape: NeumorphicShape.concave,
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color:
                                      Theme.of(context).primaryIconTheme.color,
                                ),
                                onPressed: () {},
                              ),
                            ))
                      ]),
                    ),
                  ]),
            ),
          ),

          //----------------------------------Second container-------------------------------------------------------------
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Neumorphic(
              drawSurfaceAboveChild: true,
              style: NeumorphicStyle(
                  depth: -4,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16))
                  // shape: NeumorphicShape.concave,

                  ),
              child: Container(
                color: Theme.of(context).primaryColor.withOpacity(0.6),
                width: 250,
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Opacity(
                                  opacity: 0.9,
                                  child: Text(
                                    "Online\nClass",
                                    softWrap: true,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: Theme.of(context)
                                                .backgroundColor),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: NeumorphicSwitch(
                                height: 24,
                                onChanged: (bool onlineClassSwitch) {},
                                style: NeumorphicSwitchStyle(),
                              ),
                            )
                          ]),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom: 4),
                                    child: Text(
                                      "Google meet",
                                      softWrap: true,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .backgroundColor
                                                  .withOpacity(0.9),
                                              fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 1.5,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        "11:00, Tomorrow",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .backgroundColor
                                                    .withOpacity(0.8)),
                                      ))
                                ]),
                          ),
                          Padding(
                              padding: EdgeInsets.all(16),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.circle(),
                                  shape: NeumorphicShape.concave,
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Theme.of(context)
                                        .primaryIconTheme
                                        .color,
                                  ),
                                  onPressed: () {},
                                ),
                              ))
                        ]),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
