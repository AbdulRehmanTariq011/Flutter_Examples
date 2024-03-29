// ignore_for_file: unnecessary_new, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:table_app/Home.dart';

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
        context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Text(
                "Table App",
                style: TextStyle(fontSize: 35),
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: new Image.asset(
              'images/icon.jpg',
              height: 150.0,
              fit: BoxFit.scaleDown,
            ),
          ),
          Text(
            "Welcome to My App",
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
