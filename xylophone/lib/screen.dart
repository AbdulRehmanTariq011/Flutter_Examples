// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:xylophone/list.dart';
import 'package:xylophone/screen2.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  static var mdllist = List.generate(6, (index) => ListItem());

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Xylophone",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        elevation: 0,
        backgroundColor: Colors.indigo,
        leading: Icon(Icons.home),
        actions: [Icon(Icons.menu)],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: mdllist[0].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[0].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[0].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: mdllist[1].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[1].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[1].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: mdllist[2].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[2].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[2].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: mdllist[3].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[3].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[3].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: mdllist[4].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[4].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[4].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: mdllist[5].clr,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: pickerColor,
                              onColorChanged: changeColor,
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  mdllist[5].clr = pickerColor;
                                  Navigator.pop(context);
                                },
                                child: const Text("Got it"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Pick Color"),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      String? path = result.files.single.path;
                      mdllist[5].path = path == null ? "" : path;
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Text("Pick Sound"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => XylophoneApp(mdllist)));
            },
            child: Text("Paly"),
          )
        ],
      ),
    );
  }
}
