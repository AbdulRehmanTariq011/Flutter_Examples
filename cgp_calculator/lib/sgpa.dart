import 'package:flutter/material.dart';

class sgpa extends StatefulWidget {
  const sgpa({Key? key}) : super(key: key);

  @override
  _sgpaState createState() => _sgpaState();
}

class _sgpaState extends State<sgpa> {
  int start = 1;
  int start1 = 1;
  List<double> sgpa = [];
  int prev = 1;
  @override
  Widget build(BuildContext context) {
    if (prev != start) {
      prev = start;
      sgpa = List.generate(start, (index) => 0.0);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SGPA Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Your Course",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$start",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                  child: Slider(
                      value: start.toDouble(),
                      min: 0,
                      max: 6,
                      inactiveColor: Colors.blue,
                      onChanged: (double newValue) {
                        setState(() {
                          start = newValue.round();
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: ListView.builder(
                  itemCount: start,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5),
                      color: Colors.blueAccent[100],
                      height: 80,
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Course: ${index + 1}",
                                style: TextStyle(fontSize: 18)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Slider(
                                    value: start1.toDouble(),
                                    min: 0,
                                    max: 4,
                                    inactiveColor: Colors.blue,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        start1 = newValue.round();
                                      });
                                    }),
                                Text(
                                  "$start1",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                //calculate();
              },
              child: Text("Calculate"))
        ],
      ),
    );
  }
}
