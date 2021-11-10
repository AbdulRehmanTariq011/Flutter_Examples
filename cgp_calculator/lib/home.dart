// ignore_for_file: prefer_const_constructors

import 'package:cgp_calculator/cgpa.dart';
import 'package:cgp_calculator/gpa.dart';
import 'package:cgp_calculator/sgpa.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("CGP Calclator"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90, right: 190),
              child: Image(
                image: AssetImage("images/pi.png"),
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Text("Abdul Rehman Tariq"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text("FA18-BCS-011"),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
              ],
            ),
            ListTile(
              title: const Text('GPA'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => gpa(),
                    ));
              },
            ),
            ListTile(
              title: const Text('SGPA'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => sgpa(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('CGPA'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => cgpa(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Here You can Calculate ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15.0),
            Text(
              "GPA , SGPA , CGPA",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
