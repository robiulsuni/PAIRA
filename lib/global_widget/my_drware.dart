import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue,
      child: Wrap(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green.shade300),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.verified_user_sharp),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('Details'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
