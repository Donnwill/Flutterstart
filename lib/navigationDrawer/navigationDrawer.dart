import 'package:flutter/material.dart';
import './createDrawerHeader.dart';
import './createDrawerBodyItem.dart';
import '../routes/pageRoute.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.home),
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Profile',

          ),
          createDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Events',

          ),
          Divider(),
          createDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'Notifications',
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',

          ),
          ListTile(
            title: Text('App Version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
