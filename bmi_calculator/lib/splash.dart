// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
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
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(236, 240, 223, 1),
        body: Stack(fit: StackFit.expand, children: [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: new Image.asset(
                  'images/splash.png',
                  height: 250.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              )
            ],
          ),
        ]));
  }
}
