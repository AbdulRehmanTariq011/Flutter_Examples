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
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Invalid Security Code";
                                    }
                                  },
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
                                    showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Enter Details"),
                                            content: SizedBox(
                                              height: 220,
                                              child: Column(children: [
                                                Form(
                                                  child: TextFormField(
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      labelText: 'Discription',
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Form(
                                                  child: TextFormField(
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      labelText: 'Password',
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20.0),
                                                  child: ElevatedButton(
                                                    child: Text('OK'),
                                                    onPressed: () async {},
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          );
                                        });
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
