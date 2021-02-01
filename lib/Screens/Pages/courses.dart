import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Pages/login.dart';
import 'package:selfcareapp/Screens/Pages/signup.dart';
import 'package:selfcareapp/Screens/Pages/video_player.dart';
import 'package:selfcareapp/Screens/Widgets/custom_list_tile.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("lib/Assets/kidney.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              height: 60,
              child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    body: Divider(
                      color: Colors.orange[50],
                      height: 0,
                      thickness: 2,
                    ),
                    backgroundColor: Colors.orange,
                    appBar: TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'Table of content',
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Description',
                            ),
                          ),
                        ],
                        indicatorColor: Colors.orange[50],
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 7,
                        labelColor: Colors.orange[50],
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  )),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  padding: EdgeInsets.only(top: 20),
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  VideoPlayer())),
                      child: CustomListTile(
                        title: "Courses Overview",
                        number: "1",
                        time: "0 2m 6s",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  VideoPlayer())),
                      child: CustomListTile(
                        title: "The Basics",
                        number: "2",
                        time: "0 57m 22s",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  VideoPlayer())),
                      child: CustomListTile(
                        title: "Right Kidney",
                        number: "3",
                        time: "0 22m 40s",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  VideoPlayer())),
                      child: CustomListTile(
                        title: "Left Kidney",
                        number: "4",
                        time: "0 42m 8s",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  VideoPlayer())),
                      child: CustomListTile(
                        title: "Functions",
                        number: "5",
                        time: "0 30m 6s",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
