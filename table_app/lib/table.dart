import 'package:flutter/material.dart';

class TablePrint extends StatelessWidget {
  // const Table({Key? key}) : super(key: key);
  int n, s, e;

  TablePrint({required this.n, required this.s, required this.e});

  List<ListTile> calculate() {
    List<ListTile> temp = [];
    for (s; s <= e; s++) {
      temp.add(ListTile(
        title: Text(n.toString() + "x" + s.toString() + "=" + "${n * s}"),
      ));
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Table Screen"),
      ),
      body: ListView(
        children: calculate(),
      ),
    );
  }
}
