import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/Widgets/custom_credit_card.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
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
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 35),
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
                  child: ListView(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 65,
                                child: DefaultTabController(
                                    length: 3,
                                    child: Scaffold(
                                      backgroundColor: Colors.white,
                                      appBar: TabBar(
                                          tabs: [
                                            Tab(
                                              child: Text(
                                                'Cart',
                                              ),
                                            ),
                                            Tab(
                                              child: Text(
                                                'Payment',
                                              ),
                                            ),
                                            Tab(
                                              child: Text(
                                                'Confirm',
                                              ),
                                            ),
                                          ],
                                          indicatorColor: Colors.grey,
                                          indicatorSize:
                                              TabBarIndicatorSize.label,
                                          indicatorWeight: 3,
                                          labelColor: Colors.black,
                                          labelStyle: TextStyle(
                                              fontSize: 16, color: Colors.red)),
                                    ))),
                            CustomCreditCard(
                                cardNumber: "0000 0000 0000 0000",
                                cvv: "0000",
                                expiryDate: "00/00",
                                cardHolderName: "CARDHOLDER NAME"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 16, right: 16),
                                  child: Text("Add a new card"),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 14,
                                      ),
                                      child: Image(
                                        image:
                                            AssetImage("lib/Assets/visa.png"),
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage(
                                          "lib/Assets/master_card.png"),
                                      height: 50,
                                      width: 50,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10, left: 5),
                                        child: Text("Name of Card Holder"),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              fillColor: Colors.grey,
                                              border: InputBorder.none),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10, left: 5),
                                        child: Text("Card Number"),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.shade300,
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              fillColor: Colors.grey,
                                              border: InputBorder.none),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                                left: 5,
                                              ),
                                              child: Text("CVV"),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade300,
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    fillColor: Colors.grey,
                                                    border: InputBorder.none),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 10, left: 5),
                                              child: Text("Expiry Date"),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade300,
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    fillColor: Colors.grey,
                                                    border: InputBorder.none),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 5, left: 14, right: 14),
                                  child: FlatButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.orange,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 25),
                                      child: Text(
                                        "Proceed",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: FlatButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 25),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
