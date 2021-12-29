import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  List<String> item = [];
  late String temp;
  late String temp1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Save Password"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (str) {
              temp = str;
            },
            maxLength: 20,
          ),
          TextField(
            onChanged: (str1) {
              temp1 = str1;
            },
            maxLength: 20,
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              setState(() {
                item.add(temp);
                item.add(temp1);
              });
            },
          ),
          ListView(
            shrinkWrap: true,
            children: item.map((element) => Text(element)).toList(),
          )
        ],
      ),
    );
  }
}
