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
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/background.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50.0,
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                      shape: BoxShape.circle,
                      // color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/profile.jpg'),
                      ),
                    ),
                  ),
                ),
              ]),
          SizedBox(height: 70.0),
          Text(
            'Sahir Khan',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'App Developer',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
