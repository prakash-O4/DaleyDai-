import 'package:flutter/material.dart';
import 'package:text_field/body.dart';

// color code of button #1E319D
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daley Dai',
      home: MyHomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DaleyBody(),
      ),
    );
  }
}
