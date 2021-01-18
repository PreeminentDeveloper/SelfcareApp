import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 50),
            child: Text(
              "Subscription",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}
