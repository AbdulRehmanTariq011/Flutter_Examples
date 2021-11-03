// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:async';

import 'package:flutter/material.dart';

class play1 extends StatefulWidget {
  @override
  State<play1> createState() => _play1State();
}

class _play1State extends State<play1> {
  int sec = 5;

  Timer? time;

  bool first = true;

  _startTimer() {
    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (sec > 1) {
          sec--;
        } else {
          first = true;
          if (num < 10) {
            num++;
            timer.cancel();
            // first = true;
          }
          if (num == 10) first = false;
          sec = 5;
          time!.cancel();
        }
      });
    });
  }

  int num = 1;

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
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "$num",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70, bottom: 90),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      time?.cancel();
                      sec = 5;
                      first = true;
                      setState(() {
                        if (num != 10) num++;
                      });
                    },
                    child: Text(
                      "Forward",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170, bottom: 90),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      time?.cancel();
                      sec = 5;
                      first = true;
                      setState(() {
                        if (num > 1) num--;
                      });
                    },
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
                padding: EdgeInsets.only(left: 100, bottom: 90),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      setState(() {
                        first = true;
                        sec = 5;
                      });
                    },
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140, bottom: 90),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      setState(() {
                        time?.cancel();
                        first = false;
                        sec = 1;
                      });
                    },
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
