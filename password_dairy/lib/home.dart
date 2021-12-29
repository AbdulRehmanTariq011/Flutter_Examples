import 'package:flutter/material.dart';
import 'package:password_dairy/new.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: deprecated_member_use
  List<String> itms = [];
  late String temp;
  late String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Password Dairy"),
        ),
        drawer: Drawer(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("FA18-BCS-011"),
                accountEmail: Text("Abdul Rehman Tariq"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("images/pi.png"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.password),
                title: Text("Add Password"),
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Enter Security Code"),
                          content: SizedBox(
                            height: 170,
                            child: Column(children: [
                              Form(
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter Your Code',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: ElevatedButton(
                                  child: Text('OK'),
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => New(),
                                        ));
                                  },
                                ),
                              ),
                            ]),
                          ),
                        );
                      });
                },
              ),
              ListTile(
                leading: Icon(Icons.password),
                title: Text("Save Password"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.password_sharp),
                title: Text("Retrieve Password"),
                onTap: () {},
              ),
            ],
          ),
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
