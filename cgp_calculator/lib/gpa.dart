import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gpa extends StatefulWidget {
  const gpa({Key? key}) : super(key: key);

  @override
  _gpaState createState() => _gpaState();
}

class _gpaState extends State<gpa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GPA Calculator"),
      ),
    );
  }
}
