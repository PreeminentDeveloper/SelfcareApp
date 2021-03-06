import 'package:flutter/material.dart';
import 'package:selfcareapp/Screens/self_care_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _blancFocusNode = FocusNode();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(_blancFocusNode);
      },
      child: MaterialApp(
        color: Colors.orange,
        title: 'Self Care App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SelfCareApp(),
      ),
    );
  }
}
