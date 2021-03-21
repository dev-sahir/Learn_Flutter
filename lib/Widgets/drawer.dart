import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/sk.png'),
                ),
                accountEmail: Text('sahirkhan@gmail.com'),
                accountName: Text(
                  'Sahir Khan',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.person_crop_circle,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Friends',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.person_2_fill,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Messages',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.bolt_horizontal_circle,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.staroflife,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Pages',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.flag,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.moon,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.info_circle,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              leading: Icon(
                CupertinoIcons.power,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
