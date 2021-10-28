// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xylophone/screen.dart';

import 'main.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        body: Stack(fit: StackFit.expand, children: [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: RichText(
                      // ignore: prefer_const_literals_to_create_immutables
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'X',
                        style: TextStyle(color: Colors.red, fontSize: 40)),
                    TextSpan(
                        text: 'y',
                        style: TextStyle(color: Colors.green, fontSize: 40)),
                    TextSpan(
                        text: 'l',
                        style: TextStyle(color: Colors.blue, fontSize: 40)),
                    TextSpan(
                        text: 'o',
                        style: TextStyle(color: Colors.purple, fontSize: 40)),
                    TextSpan(
                        text: 'p',
                        style: TextStyle(color: Colors.blue, fontSize: 40)),
                    TextSpan(
                        text: 'h',
                        style: TextStyle(color: Colors.purple, fontSize: 40)),
                    TextSpan(
                        text: 'o',
                        style: TextStyle(color: Colors.blue, fontSize: 40)),
                    TextSpan(
                        text: 'n',
                        style: TextStyle(color: Colors.purple, fontSize: 40)),
                    TextSpan(
                        text: 'e',
                        style: TextStyle(color: Colors.purple, fontSize: 40)),
                  ]))),
              Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: new Image.asset(
                  'images/xp.jpg',
                  height: 150.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ]));
  }
}
