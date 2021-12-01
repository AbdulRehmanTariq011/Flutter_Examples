// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:table_app/table.dart';

class table extends StatefulWidget {
  static const String routeName = "/account";

  @override
  State<table> createState() => _tableState();
}

class _tableState extends State<table> {
  int value1 = 1;
  int start = 1;
  int end = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Table App"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Table",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$value1",
                  style: TextStyle(fontSize: 30),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5.0,
                ),
                Slider(
                    value: value1.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    inactiveColor: Colors.blue,
                    onChanged: (double newValue) {
                      setState(() {
                        value1 = newValue.round();
                      });
                    }),
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Table Starting Limit",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                        Text(start.toString(),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              elevation: 7,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (start > 0) {
                                    start--;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              elevation: 7,
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  if (start <= 19) {
                                    start++;
                                  }
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Table Ending Limit",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                        Text(end.toString(),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              elevation: 7,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (end > 0) {
                                    end--;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              elevation: 7,
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  if (end <= 19) {
                                    end++;
                                  }
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ))
                  ],
                )),
              ],
            )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TablePrint(n: value1, s: start, e: end)));
                },
                child: Text("Display"))
          ],
        ));
  }
}
