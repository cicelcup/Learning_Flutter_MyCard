import 'package:flutter/material.dart';
import 'my_card.dart';
import 'my_first_card.dart';
import 'my_second_card.dart';
import 'theme.dart';

void main() {
  runApp(MySecondCard());
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
