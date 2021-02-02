import 'package:Counter/constantes.dart';
import 'package:Counter/screens/home_screen.dart';
import 'package:Counter/screens/login_screen.dart';
import 'package:Counter/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyFirebaseInit());
}

class MyFirebaseInit extends StatelessWidget {
  final Future<FirebaseApp> _initApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initApp,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return AlertDialog();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryVineColor,
        backgroundColor: kLightVineColor,
      ),
      initialRoute: MyHomeScreen.id,
      routes: {
        MyLoginScreen.id: (context) => MyLoginScreen(),
        MySignupScreen.id: (context) => MySignupScreen(),
        MyHomeScreen.id: (context) => MyHomeScreen()
      },
    );
  }
}
