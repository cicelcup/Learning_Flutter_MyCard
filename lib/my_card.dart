import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Business Card",
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                "images/leones.jpg",
              ),
              radius: 50.0,
            ),
            Text(
              "Jorge A Peroza M",
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
