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
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 32.0,
              width: 250,
              child: Divider(
                color: Colors.amber[300],
              ),
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
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
        child: ListTile(
          leading: Icon(
            iconType,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            information,
          ),
        ));
  }
}
