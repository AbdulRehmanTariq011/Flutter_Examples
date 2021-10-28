import 'package:flutter/material.dart';
import 'package:xylophone/list.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatefulWidget {
  //const XylophoneApp({ Key? key }) : super(key: key);
  var list;
  XylophoneApp(this.list) {}

  @override
  _XylophoneAppState createState() => _XylophoneAppState(this.list);
}

class _XylophoneAppState extends State<XylophoneApp> {
  var mdllist = List.generate(0, (index) => ListItem());
  _XylophoneAppState(this.mdllist) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Xylophone",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
          elevation: 0,
          backgroundColor: Colors.indigo,
          leading: BackButton(color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[0].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 550,
                  color: mdllist[0].clr,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[1].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 530,
                  color: mdllist[1].clr,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[2].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 500,
                  color: mdllist[2].clr,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[3].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 470,
                  color: mdllist[3].clr,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[4].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 440,
                  color: mdllist[4].clr,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer audioPlayer = AudioPlayer();
                  playLocal() async {
                    int result =
                        await audioPlayer.play(mdllist[5].path, isLocal: true);
                  }

                  playLocal();
                },
                child: Container(
                  height: 100,
                  width: 410,
                  color: mdllist[5].clr,
                ),
              ),
            ],
          ),
        ));
  }
}
