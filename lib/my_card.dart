import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Android / Flutter Developer",
              style: Theme.of(context).textTheme.headline6,
            ),
            InformationWidget(
              iconType: Icons.phone,
              information: "+506 6040-6057",
            ),
            InformationWidget(
              iconType: Icons.email,
              information: "cicelcup@hotmail.com",
            ),
          ],
        ),
      ),
    );
  }
}

class InformationWidget extends StatelessWidget {
  final iconType;
  final information;

  const InformationWidget({
    Key key,
    this.iconType,
    this.information,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Icon(iconType),
          SizedBox(
            width: 16.0,
          ),
          Text(
            information,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
