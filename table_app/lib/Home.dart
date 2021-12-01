// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_app/Account.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tabble App"),
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Abdul Rehman Tariq"),
              accountEmail: Text("FA18-BCS-011"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/pi.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Table"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => table(),
                    ));
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
              "Here You can select ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15.0),
            Text(
              "any table value",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
