import 'package:flutter/material.dart';
import 'my_second_card.dart';
import 'my_first_card.dart';
import 'my_card.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Card",
        theme: appTheme(),
        home: Options());
  }
}

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("My card example"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              RaisedButton(
                color: Colors.green,
                padding: EdgeInsets.all(16.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyFirstCard()),
                  );
                },
                child: Text(
                  "My Card 1",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                color: Colors.redAccent,
                padding: EdgeInsets.all(16.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MySecondCard()),
                  );
                },
                child: Text(
                  "My Card 2",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              RaisedButton(
                padding: EdgeInsets.all(16.0),
                color: Colors.purpleAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCard()),
                  );
                },
                child: Text(
                  "My Card 3",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
