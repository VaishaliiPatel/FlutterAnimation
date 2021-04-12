import 'package:animation_demo/Screens.dart/BottomTabBarScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: new Color(0xff2C3E50),
      ),
      home: TabBarScreen(),
    );
  }
}
