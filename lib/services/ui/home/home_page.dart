import 'package:flutter/material.dart';

class HomePagePage extends StatefulWidget {
  static const String routeName = '/homePage';

  @override
  _HomePagePageState createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Column(),
    );
  }
}
