import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageURL, topic, cost;
  CustomCard({this.imageURL, this.topic, this.cost});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 142,
      child: Card(
          elevation: 0,
          color: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                          image: DecorationImage(
                            image: AssetImage(imageURL),
                            fit: BoxFit.fill,
                          )))),
              Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            topic,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              cost,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 13,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 13,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 13,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 13,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 13,
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
