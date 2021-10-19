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
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        actions: [
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
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
  int total1 = 0;
  int total2 = 0;
  int total3 = 0;
  int total4 = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
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
        //Row 1
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num1 = Random().nextInt(6) + 1;
                    total1 = num1 + total1;
                  });
                  score1 = score1 + num1;
                  print("Player 1 has Total Score :$total1");
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
                    total2 = num2 + total2;
                  });
                  score2 = score2 + num2;
                  print("Player 2 has Total Score :$total2");
                },
                child: Image(
                  image: AssetImage("images/dice$num2.png"),
                ),
              ),
            ),
          ],
        ),

        //row for player first

        SizedBox(
          height: 15.0,
        ),
        //row for total first
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 10.0,
            )),
            Text(
              "Total Score:  $total1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: 75.0,
            ),
            Text(
              "Total Score:  $total2",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),

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
          height: 18.0,
        ),
        //Row2
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    num3 = Random().nextInt(6) + 1;
                    total3 = num3 + total3;
                  });
                  score3 = score3 + num3;
                  print("Player 3 has Total Score :$total3");
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
                    total4 = num4 + total4;
                  });
                  score4 = score4 + num4;
                  print("Player 4 has Total Score :$total4");
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

        //row for total second
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 10.0,
            )),
            Text(
              "Total Score:  $total3",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: 75.0,
            ),
            Text(
              "Total Score:  $total4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
