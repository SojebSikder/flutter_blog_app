import 'package:flutter/material.dart';
import 'package:flutterblogapp/pages/Home.dart';
import 'package:flutterblogapp/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}
