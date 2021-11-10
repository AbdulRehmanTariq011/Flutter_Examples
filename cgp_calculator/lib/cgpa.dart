import 'package:flutter/material.dart';

class cgpa extends StatefulWidget {
  const cgpa({Key? key}) : super(key: key);

  @override
  _cgpaState createState() => _cgpaState();
}

class _cgpaState extends State<cgpa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CGPA"),
      ),
    );
  }
}
