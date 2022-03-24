import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.picture_in_picture),
              accountName: Text('Demo Name'),
              accountEmail: Text('demo@demo.com')),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Message'),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        )
      ],
    ));
  }
}
