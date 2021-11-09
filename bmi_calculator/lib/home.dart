// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bmi Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(child: Reuseablecard(colour: Color(0xff1D1E33))),
              Expanded(child: Reuseablecard(colour: Color(0xff1D1E33))),
            ],
          )),
          Expanded(child: Reuseablecard(colour: Color(0xff1D1E33))),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(child: Reuseablecard(colour: Color(0xff1D1E33))),
              Expanded(child: Reuseablecard(colour: Color(0xff1D1E33))),
            ],
          ))
        ],
      ),
    );
  }
}

class Reuseablecard extends StatelessWidget {
  Reuseablecard({required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
