import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'Widgets/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LearnFlutter(),
    );
  }
}

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  double slider1 = 50;
  double slider2 = 50;
  double slider3 = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        brightness: Brightness.dark,
        shadowColor: Colors.indigo,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text('Flutter'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Slider',
            style: TextStyle(
              fontSize: slider1,
            ),
          ),
          SizedBox(height: 40.0),
          Slider(
            activeColor: Colors.red,
            inactiveColor: Colors.red.shade100,
            label: slider1.round().toString(),
            divisions: 100,
            min: 0,
            max: 100,
            value: slider1,
            onChanged: (value) {
              setState(() {
                this.slider1 = value;
              });
            },
          ),
          SizedBox(height: 40.0),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.indigo,
              inactiveTrackColor: Colors.indigo.shade100,
              thumbColor: Colors.green,
              valueIndicatorColor: Colors.teal,
              overlayColor: Colors.red,
            ),
            child: Slider(
              label: slider2.round().toString(),
              divisions: 100,
              min: 0,
              max: 100,
              value: slider2,
              onChanged: (value) {
                setState(() {
                  this.slider2 = value;
                });
              },
            ),
          ),
          SizedBox(height: 40.0),
          SliderTheme(
            data: SliderThemeData(
              overlayShape: RoundSliderOverlayShape(overlayRadius: 32),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 22),
              trackHeight: 20.0,
              activeTrackColor: Colors.indigo,
              inactiveTrackColor: Colors.indigo.shade100,
              thumbColor: Colors.green,
              valueIndicatorColor: Colors.teal,
              overlayColor: Colors.red,
            ),
            child: SizedBox(
              width: 250.0,
              child: Slider(
                label: slider3.round().toString(),
                divisions: 100,
                min: 0,
                max: 100,
                value: slider3,
                onChanged: (value) {
                  setState(() {
                    this.slider3 = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
