import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Pages/course_payment.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              // onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "  My Profile",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 50, right: 50, top: 30, bottom: 10),
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("lib/Assets/avatar.jpg"),
                            )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(
                        children: [
                          Text(
                            "Mike Dallas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "mikedallas@gmail.com",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 40),
                      child: FlatButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CoursePayment())),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 20),
                          child: Column(
                            children: [
                              Text(
                                "mobile number",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                              Text(
                                "8081234567",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        color: Colors.orange,
                      ),
                    ),
                    Divider(
                      height: 0.0,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.store_mall_directory,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text("Courses"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(
                      height: 0.0,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.subscriptions,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text("Subscription Packs"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(
                      height: 0.0,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.payment,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text("Payment History"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(
                      height: 0.0,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.logout,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text("Logout"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    Divider(
                      height: 0.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
