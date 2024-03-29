// ignore_for_file: prefer_const_constructors

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
        backgroundColor: Colors.yellow[300],
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        // ignore: prefer_const_literals_to_create_immutables
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
      backgroundColor: Colors.yellow[200],
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
  int total1 = 0;
  int total2 = 0;
  int total3 = 0;
  int total4 = 0;
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  var result1 = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        Expanded(
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text(
                "Player 1",
                style: TextStyle(
                  color: Colors.blueGrey,
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
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
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
                    count1 = 1 + count1;
                    if (count1 < 11) {
                      num1 = Random().nextInt(6) + 1;
                      total1 = num1 + total1;
                      print(count1);
                      print("Player 1 has Total Score :$total1");
                    }
                  });
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
                    count2 = 1 + count2;
                    if (count2 < 11) {
                      num2 = Random().nextInt(6) + 1;
                      total2 = num2 + total2;
                      print(count2);
                      print("Player 2 has Total Score :$total2");
                    }
                  });
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
              width: 60.0,
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
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Player 3",
              style: TextStyle(
                color: Colors.blueGrey,
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
                color: Colors.blueGrey,
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
                    count3 = 1 + count3;
                    if (count3 < 11) {
                      num3 = Random().nextInt(6) + 1;
                      total3 = num3 + total3;
                      print(count3);
                      print("Player 3 has Total Score :$total3");
                    }
                  });
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
                    count4 = 1 + count4;
                    if (count4 < 11) {
                      num4 = Random().nextInt(6) + 1;
                      total4 = num4 + total4;
                      print(count4);
                      print("Player 4 has Total Score :$total4");
                    }
                  });
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
              width: 60.0,
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

        Expanded(
          child: FlatButton(
            color: Colors.blue,
            child: Text(
              "Check",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onPressed: () {
              if (total1 > total2 && total1 > total3 && total1 > total4) {
                result1 = 'player1';
              } else if (total2 > total1 &&
                  total2 > total3 &&
                  total2 > total4) {
                result1 = 'player2';
              } else if (total3 > total2 &&
                  total3 > total1 &&
                  total3 > total4) {
                result1 = 'player3';
              } else if (total4 > total2 &&
                  total4 > total3 &&
                  total4 > total1) {
                result1 = 'player4';
              }
              setState(() {});
            },
          ),
        ),

        Expanded(
          child: Row(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                "Player has won: $result1",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 80,
              ),
              GestureDetector(
                onTap: () => {
                  total1 = 0,
                  total2 = 0,
                  total3 = 0,
                  total4 = 0,
                  num1 = 1,
                  num2 = 1,
                  num3 = 1,
                  num4 = 1,
                  result1 = '',
                  setState(() {}),
                },
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
