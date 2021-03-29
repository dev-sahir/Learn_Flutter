import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
  File? _imageFile;

  buidProfile() {
    if (_imageFile != null) {
      return ClipOval(
        child: Image.file(
          _imageFile!,
          height: 180.0,
          width: 180.0,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return ClipOval(
        child: Image.asset(
          'images/mp.jpg',
          height: 180.0,
          width: 180.0,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  getImageCamera() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print("no image selected");
      }
    });
  }

  getImageGallery() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print("no image selected");
      }
    });
  }

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
            buidProfile(),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: getImageCamera,
                  child: Text('Camera'),
                ),
                ElevatedButton(
                  onPressed: getImageGallery,
                  child: Text('Gallery'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
