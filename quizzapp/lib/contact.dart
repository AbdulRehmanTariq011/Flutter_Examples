import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text("Contact", style: TextStyle(fontSize: 30)),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 240, left: 50),
                  child: new Image.asset(
                    'images/fb.png',
                    height: 50.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 240, right: 270),
                child: new Image.asset(
                  'images/wa.png',
                  height: 50.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 240, right: 50),
                child: new Image.asset(
                  'images/tw.png',
                  height: 50.0,
                ),
              ),
            ],
          )
        ]));
  }
}
