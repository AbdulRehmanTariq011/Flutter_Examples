// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Expanded(
                child: Reuseablecard(
                    colour: activeCardColour, cardwidget: RepeatIcon()),
              ),
              Expanded(
                  child: Reuseablecard(
                      colour: activeCardColour, cardwidget: RepeatIcon())),
            ],
          )),
          Expanded(
              child: Reuseablecard(
                  colour: activeCardColour, cardwidget: RepeatIcon())),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                  child: Reuseablecard(
                      colour: activeCardColour, cardwidget: RepeatIcon())),
              Expanded(
                  child: Reuseablecard(
                      colour: activeCardColour, cardwidget: RepeatIcon())),
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

class RepeatIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(FontAwesomeIcons.male, size: 85),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Male",
          style: TextStyle(fontSize: 30, color: Colors.white),
        )
      ],
    );
  }
}

class Reuseablecard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Reuseablecard({required this.colour, required this.cardwidget});
  final Color colour;
  final Widget cardwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
