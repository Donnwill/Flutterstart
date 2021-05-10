import 'package:flutter/material.dart';
import 'fragments/homePage.dart';
import './routes/pageRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.purpleAccent,
      ),
      home: HomePage(),
      routes: {
        PageRoutes.home: (context) => HomePage(),

    },
    );
  }
}