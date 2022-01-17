import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Wrap(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent.shade400),
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
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Administration'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Downloads'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text('Technology'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
