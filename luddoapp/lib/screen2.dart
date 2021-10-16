import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Luddo App",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white70,
      body: Dicepage(),
    ));
  }
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int num1 = 1;
  int num2 = 1;
  int num3 = 1;
  int num4 = 1;
  int score1 = 1;
  int score2 = 1;
  int score3 = 1;
  int score4 = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        //Row 1
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num1 = Random().nextInt(6) + 1;
                  });
                  score1 = score1 + num1;
                  print("Player 1 has Total Score :$score1");
                },
                child: Image(
                  image: AssetImage("images/dice$num1.png"),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num2 = Random().nextInt(6) + 1;
                  });
                  score2 = score2 + num2;
                  print("Player 2 has Total Score :$score2");
                },
                child: Image(
                  image: AssetImage("images/dice$num2.png"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        //row for player first
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 70.0,
            )),
            Text(
              "Player 1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 150.0,
            ),
            Text(
              "Player 2",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        //row for total first
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 45.0,
            )),
            Text(
              "Total Score:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Text(
              "Total Score:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        //Row2
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num3 = Random().nextInt(6) + 1;
                  });
                  score3 = score3 + num3;
                  print("Player 3 has Total Score :$score3");
                },
                child: Image(
                  image: AssetImage("images/dice$num3.png"),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num4 = Random().nextInt(6) + 1;
                  });
                  score4 = score4 + num4;
                  print("Player 4 has Total Score :$score4");
                },
                child: Image(
                  image: AssetImage("images/dice$num4.png"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        //row for player second
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 70.0,
            )),
            Text(
              "Player 3",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 150.0,
            ),
            Text(
              "Player 4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        //row for total second
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 45.0,
            )),
            Text(
              "Total Score:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Text(
              "Total Score:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
