import 'package:flutter/material.dart';

class sgpa extends StatefulWidget {
  const sgpa({Key? key}) : super(key: key);

  @override
  _sgpaState createState() => _sgpaState();
}

class _sgpaState extends State<sgpa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SGPA Calculator"),
      ),
    );
  }
}
