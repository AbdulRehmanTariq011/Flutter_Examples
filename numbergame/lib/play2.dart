import 'dart:async';
import 'package:flutter/material.dart';

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

    ;
  });
}

class play2 extends StatelessWidget {
  const play2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Play Screen 2"),
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
