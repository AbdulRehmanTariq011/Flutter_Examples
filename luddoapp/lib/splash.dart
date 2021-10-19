import 'package:flutter/material.dart';
import 'package:luddoapp/screen2.dart';

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
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(fit: StackFit.expand, children: [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: new Image.asset(
                  'images/ludo.png',
                  height: 200.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Text(
                "Welcom to Luddo Game",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ]));
  }
}
