// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzapp/main.dart';
import 'main.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Quizz"),
        elevation: 0,
        leading: Icon(Icons.home),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.menu),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80, left: 90),
            child: Text(
              "Test Your Mind",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              "You have limited time for Each Question",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 140, right: 140, bottom: 290, top: 60),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Quizzler(),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
