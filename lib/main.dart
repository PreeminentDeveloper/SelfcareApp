import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Tabs/home.dart';
import 'package:selfcareapp/Screens/subscription.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.orange,
      title: 'Self Care App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
