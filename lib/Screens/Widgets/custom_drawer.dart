import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Pages/forum.dart';
import 'package:selfcareapp/Screens/Pages/login.dart';
import 'package:selfcareapp/Screens/Pages/recommendation.dart';
import 'package:selfcareapp/Screens/Pages/signup.dart';
import 'package:selfcareapp/Screens/Pages/subscription.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orange[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.orange,
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                "Self Care App",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Forum())),
                    title: Text(
                      "Forum",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Recommendation())),
                    title: Text(
                      "Recommendation",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Subscription())),
                    title: Text(
                      "Subscription",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SignUp())),
                    title: Text(
                      "Signup",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LogIn())),
                    title: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
