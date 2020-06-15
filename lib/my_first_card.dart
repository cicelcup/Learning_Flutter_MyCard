import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyFirstCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 30,
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.white,
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.orange, Colors.purple], stops: [0.5, 0.7]),
              ),
            ),
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  colors: const [
                    Colors.blue,
                    Colors.green,
                    Colors.yellow,
                    Colors.red,
                    Colors.blue,
                  ],
                  stops: const [0.0, 0.1, 0.5, 0.95, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
