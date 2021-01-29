import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.fastfood),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text('Welcome')),
      ),
    );
  }
}
