import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/me.jpg'),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
            bottom: 8.0,
            right: 20.0,
            child: Text('CoolWills',
              style: TextStyle(
                letterSpacing: 1,
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
        )
      ],
    ),
  );
}