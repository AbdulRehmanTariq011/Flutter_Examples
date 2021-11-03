// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class play1 extends StatelessWidget {
  int sec = 5;
  late Timer time;
  bool first = true;
  _startTimer() {
    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState() {
        if (sec > 1) {
          sec--;
        } else {
          sec = 5;
          timer.cancel();
          first = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (first) {
      first = false;
      _startTimer();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Play Screen 1"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Center(
              child: Text(
                "$sec",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70, top: 100),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "Forward",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170, top: 100),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "Backward",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, top: 60),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140, top: 60),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "Stop",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
