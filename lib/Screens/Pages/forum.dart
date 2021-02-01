import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Widgets/custom_list_tile2.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
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
                    // onTap: () => Navigator.pop(context),
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
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 3, top: 25),
              child: Row(
                children: [
                  Text(
                    "Forum",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(bottom: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Featured Courses",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.white,
                                )),
                            onPressed: () {},
                            child: Text(
                              "Most Interest",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: Colors.white,
                                )),
                            onPressed: () {},
                            child: Text(
                              "Previous",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  children: [
                    CustomListTile2(
                      title: "Cardiology",
                      subTitle: "Advanced Training 2m 6s",
                    ),
                    CustomListTile2(
                      title: "The Human Kidney",
                      subTitle: "Professional Strategy 2m 6s",
                    ),
                    CustomListTile2(
                      title: "The Human Diet",
                      subTitle: "Ultimate Course 45m 6s",
                    ),
                    CustomListTile2(
                      title: "Digestion",
                      subTitle: "Simple Tutorial 1hr 10m",
                    ),
                    CustomListTile2(
                      title: "Cholestrol",
                      subTitle: "Brand Awareness Training 30m 5s",
                    ),
                    CustomListTile2(
                      title: "Blood Tissues",
                      subTitle: "Motion Design Training 1hr 30m",
                    ),
                    CustomListTile2(
                      title: "Hepatitis",
                      subTitle: "Music video Editing 2hr 30s",
                    ),
                    CustomListTile2(
                      title: "Photosynthesis",
                      subTitle: "Advanced Training 50m 6s",
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
