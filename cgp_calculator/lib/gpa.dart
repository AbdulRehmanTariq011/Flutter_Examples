import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gpa extends StatefulWidget {
  const gpa({Key? key}) : super(key: key);

  @override
  _gpaState createState() => _gpaState();
}

class _gpaState extends State<gpa> {
  bool lab = true;
  int start = 0;
  int start1 = 0;
  int credit = 0;
  double gp = 0.0;

  String getGrade(int gpa) {
    if (gpa >= 90) {
      gp = 4.0;
      return "A";
    }
    if (gpa >= 85 && gpa < 90) {
      gp = 3.7;
      return "A-";
    }
    if (gpa >= 80 && gpa < 85) {
      gp = 3.3;
      return "B+";
    }
    if (gpa >= 75 && gpa < 80) {
      gp = 3.0;
      return "B";
    }
    if (gpa >= 70 && gpa < 75) {
      gp = 2.7;
      return "B-";
    }
    if (gpa >= 65 && gpa < 70) {
      gp = 2.3;
      return "C+";
    }
    if (gpa >= 60 && gpa < 65) {
      gp = 2.0;
      return "C";
    }
    if (gpa >= 55 && gpa < 60) {
      gp = 1.7;
      return "C-";
    }
    if (gpa >= 50 && gpa < 55) {
      gp = 1.3;
      return "D";
    } else {
      gp = 0;
      return "f";
    }
  }

  String grade = "";
  void dialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your GPA"),
              actions: [
                Text("Grade: $grade"),
                Text("Gpa: $gp"),
                ElevatedButton(
                    onPressed: () {
                      reset();
                    },
                    child: Text("Ok"))
              ],
            ));
  }

  void reset() {
    // gp = 0;
    // grade = "";
    // start = 0;
    // start1 = 0;
    // credit = 0;
  }

  void calculate() {
    int a;
    int gpa;
    if (lab) {
      a = start * (credit - 1);
      gpa = a + start1;
      gpa = (gpa / credit).round();
      grade = getGrade(gpa);
      dialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GPA Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Theroy Marks",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$start",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                  child: Slider(
                      value: start.toDouble(),
                      min: 0.0,
                      max: 100.0,
                      inactiveColor: Colors.blue,
                      onChanged: (double newValue) {
                        setState(() {
                          start = newValue.round();
                        });
                      }),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Lab Marks",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$start1",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                  child: Slider(
                      value: start1.toDouble(),
                      min: 0.0,
                      max: 100.0,
                      inactiveColor: Colors.blue,
                      onChanged: (double newValue) {
                        setState(() {
                          start1 = newValue.round();
                        });
                      }),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Credit Hours",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "$credit",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                  child: Slider(
                      value: credit.toDouble(),
                      min: 0.0,
                      max: 4.0,
                      inactiveColor: Colors.blue,
                      onChanged: (double newValue) {
                        setState(() {
                          credit = newValue.round();
                        });
                      }),
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: Text("Calculate"))
        ],
      ),
    );
  }
}
