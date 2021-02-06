import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Pages/forum.dart';
import 'package:selfcareapp/Screens/Tabs/edit.dart';
import 'package:selfcareapp/Screens/Tabs/home.dart';
import 'package:selfcareapp/Screens/Tabs/library.dart';
import 'package:selfcareapp/Screens/Tabs/profile.dart';

class SelfCareApp extends StatefulWidget {
  @override
  _SelfCareAppState createState() => _SelfCareAppState();
}

class _SelfCareAppState extends State<SelfCareApp> {
  int _currentIndex = 0;

  var tabs = [Home(), Profile(), Library(), Forum()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.orange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.orange,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: "Profile",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: "Library",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Books",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
