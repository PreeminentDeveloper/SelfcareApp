import 'package:flutter/material.dart';

class CustomCreditCard extends StatelessWidget {
  final String cardNumber, cvv, expiryDate, cardHolderName;
  CustomCreditCard(
      {this.cardNumber, this.cvv, this.expiryDate, this.cardHolderName});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("CREDIT CARD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 42,
                              width: 52,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/Assets/credit_card.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Flexible(
              flex: 2,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 5),
                        child: Text(cardNumber,
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(cvv,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("VALID",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  )),
                              Text("THRU",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ))
                            ],
                          ),
                          Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 18,
                          ),
                          Column(
                            children: [
                              Text("MONTH/YEAR",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  )),
                              Text(expiryDate,
                                  style: TextStyle(
                                    letterSpacing: 1.5,
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(cardHolderName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  )),
            )
          ],
        ),
      )
    ]);
  }
}
