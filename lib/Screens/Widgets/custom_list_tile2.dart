import 'package:flutter/material.dart';

class CustomListTile2 extends StatelessWidget {
  final String title, subTitle;
  CustomListTile2({this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subTitle),
          trailing: Container(
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                Icons.videocam_outlined,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
