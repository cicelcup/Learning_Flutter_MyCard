import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "JAPM",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
