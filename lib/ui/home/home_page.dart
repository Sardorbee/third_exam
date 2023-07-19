import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
