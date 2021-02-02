import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  static String id = 'MyHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text('Welcome')),
      ),
    );
  }
}
