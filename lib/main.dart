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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SnackBar',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            SizedBox(height: 30.0),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                child: Text('Floating Snackbar'),
                onPressed: () {
                  final snack = SnackBar(
                    content: Text(
                      "hey i'm floating snackBar",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Colors.deepOrange,
                    shape: StadiumBorder(),
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snack);
                },
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                child: Text('Action Snackbar'),
                onPressed: () {
                  final snack = SnackBar(
                    content: Text(
                      "hey i'm action snackBar",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Colors.indigo,
                    shape: StadiumBorder(),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Click Me',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snack);
                },
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                child: Text('Custom Snackbar'),
                onPressed: () {
                  final snack = SnackBar(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.done, color: Colors.white),
                        Text(
                          "hey i'm custom snackBar",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    backgroundColor: Colors.blueGrey,
                    shape: StadiumBorder(),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(30.0),
                    elevation: 10.0,
                    duration: Duration(seconds: 4),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snack);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
