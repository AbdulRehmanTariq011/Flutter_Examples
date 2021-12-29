import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Password Dairy"),
        ),
        backgroundColor: Colors.brown[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text(
                "Password Dairy",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text(
                "Home Screen",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ));
  }
}
