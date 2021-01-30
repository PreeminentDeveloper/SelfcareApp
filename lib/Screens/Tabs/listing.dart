import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Widgets/custom_card.dart';

class Listing extends StatefulWidget {
  @override
  _ListingState createState() => _ListingState();
}

class _ListingState extends State<Listing> {
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
                        padding: EdgeInsets.all(5),
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
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
              child: Text(
                "I want to learn...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 50,
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
                              "Cardiology Education",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Food Science",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Animal Science",
                            )),
                      ],
                    ),
                  ),
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
                              "Nurses",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Personal Development",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Medical Writing",
                              // style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                            height: 27,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.orange[50],
                            onPressed: () {},
                            child: Text(
                              "Psychology",
                              // style: TextStyle(color: Colors.white),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomCard(
                                  imageURL: "lib/Assets/medical_research.jpg",
                                  topic:
                                      "Medical Research Advanced Training Course",
                                  cost: "\u{20A6}10,500"),
                              SizedBox(
                                width: 15,
                              ),
                              CustomCard(
                                  imageURL: "lib/Assets/kidney.jpg",
                                  topic:
                                      "Understanding How the Kidney functions Course",
                                  cost: "\u{20A6}7,500")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomCard(
                                    imageURL: "lib/Assets/cholesterol.jpg",
                                    topic:
                                        "The Human Cholesterol Level Management Course",
                                    cost: "\u{20A6}10,500"),
                                SizedBox(
                                  width: 15,
                                ),
                                CustomCard(
                                    imageURL: "lib/Assets/blood_tissues.jpg",
                                    topic: "The Human Blood Vessels Course",
                                    cost: "\u{20A6}8,000")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: FlatButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 25),
                                child: Text(
                                  "Show More",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              color: Colors.orange,
                            ),
                          ),
                        ],
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
