import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.only(left: 15, right: 15, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      " Welcome",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 18),
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 40),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                      child: Text(
                        "Are you having headache?",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 14),
                              child: Text(
                                "A. Yes",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: Icon(Icons.check_box_outline_blank))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 14),
                              child: Text(
                                "B. No",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: Icon(Icons.check_box_outline_blank))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 14),
                              child: Text(
                                "C. Slightly",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: Icon(Icons.check_box_outline_blank))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 45),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 20),
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        color: Colors.orange,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
