import 'package:Counter/screens/home_screen.dart';
import 'package:Counter/screens/login_screen.dart';
import 'package:Counter/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff5885AF),
        backgroundColor: Color(0xffC3E0E5),
      ),
      initialRoute: MyLoginScreen.id,
      routes: {
        MyLoginScreen.id: (context) => MyLoginScreen(),
        MySignupScreen.id: (context) => MySignupScreen()
      },
    );
  }
}
