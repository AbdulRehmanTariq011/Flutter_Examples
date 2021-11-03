import 'package:flutter/material.dart';
import 'package:numbergame/play1.dart';
import 'package:numbergame/play2.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Number App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 110),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => play1(),
                      ));
                },
                child: Text(
                  "Slect 1 to 10",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 110),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => play2(),
                      ));
                },
                child: Text(
                  "Slect 11 to 20",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ],
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
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
              ],
            ),
            ListTile(
              title: const Text('1 to 10'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => play1(),
                    ));
              },
            ),
            ListTile(
              title: const Text('11 to 20'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => play2(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
