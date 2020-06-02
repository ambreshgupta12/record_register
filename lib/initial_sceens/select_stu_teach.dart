import 'package:flutter/material.dart';

class SelectST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset("images/assist.jpg")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Hey There",
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Hey There",
                  style: Theme.of(context)
                      .textTheme
                      .body1,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
