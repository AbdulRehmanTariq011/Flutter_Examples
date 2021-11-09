// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xff1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
              Expanded(child: Reuseablecard(colour: activeCardColour)),
              Expanded(child: Reuseablecard(colour: activeCardColour)),
            ],
          )),
          Expanded(child: Reuseablecard(colour: activeCardColour)),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(child: Reuseablecard(colour: activeCardColour)),
              Expanded(child: Reuseablecard(colour: activeCardColour)),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class Reuseablecard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Reuseablecard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
