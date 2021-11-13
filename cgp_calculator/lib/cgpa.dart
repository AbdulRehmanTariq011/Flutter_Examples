// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class cgpa extends StatefulWidget {
  const cgpa({Key? key}) : super(key: key);

  @override
  _cgpaState createState() => _cgpaState();
}

class _cgpaState extends State<cgpa> {
  int start = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("CGPA Calculator"),
        ),
        body: Column(children: [
          Expanded(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Theroy Marks",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
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
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0)),
              child: Slider(
                  value: start.toDouble(),
                  min: 0.0,
                  max: 6.0,
                  inactiveColor: Colors.blue,
                  onChanged: (double newValue) {
                    setState(() {
                      start = newValue.round();
                    });
                  }),
            ),
          ]))
        ]));
  }
}
