import 'package:flutter/material.dart';
import 'package:flutterblogapp/components/appbar.dart';
import 'package:flutterblogapp/components/blogcard.dart';
import 'package:flutterblogapp/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      body: Column(
        children: [
          Flexible(
            child: BlogCard(),
          ),
        ],
      ),
    );
  }
}
