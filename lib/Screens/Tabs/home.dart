import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Tabs/edit.dart';
import 'package:selfcareapp/Screens/Tabs/note.dart';
import 'package:selfcareapp/Screens/Tabs/profile.dart';
import 'package:selfcareapp/Screens/recommendation.dart';
import 'package:selfcareapp/Screens/subscription.dart';
import 'package:selfcareapp/Screens/welcome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  var tabs = [Subscription(), Profile(), Note(), Edit()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.orange,
        unselectedItemColor: Colors.orange,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: "Notes"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
        ],
      ),
    );
  }
}
