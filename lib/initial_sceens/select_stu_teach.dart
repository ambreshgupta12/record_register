import 'package:flutter/material.dart';

class SelectST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset("images/dive.jpg")),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Welcome",
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ]),
            Padding(
              padding:
                  EdgeInsets.only(left: 32, right: 32, top: 24, bottom: 62),
              child: Text(
                "Chose how you want to use this app, whether as a student or teacher.",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.black54),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 62, right: 62, bottom: 16),
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    highlightElevation: 2,
                    highlightColor: Colors.white.withAlpha(100),
                    splashColor: Colors.transparent,
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Text(
                      "STUDENT",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white.withAlpha(200)),
                    ),
                  ),
                ),
              ),
            ]),

            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 62,
                      right: 16,
                    ),
                    child: Divider(thickness:0.6,))
                ),
                Text(
                  "Or"
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 62,
                    ),
                    child: Divider(thickness:0.6,))
                ),
              ],
            ),

            Row(children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 62, right: 62, bottom: 16),
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    highlightElevation: 2,
                    highlightColor: Colors.grey.withAlpha(40),
                    splashColor: Colors.transparent,
                    color: Theme.of(context).backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Text(
                      "TEACHER",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Theme.of(context).primaryColor.withAlpha(200)),
                    ),
                  ),
                ),
              ),
            ]),

          ],
        ),
      ),
    );
  }
}
