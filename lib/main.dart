import 'package:flutter/material.dart';
import 'my_card.dart';
import 'my_first_card.dart';
import 'theme.dart';

void main() {
  runApp(MyFirstCard());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Card',
      theme: appTheme(),
      home: MyCard(),
    );
  }
}
