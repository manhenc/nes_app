import 'package:flutter/material.dart';
import 'package:flutter_app/screens/MentorListScreen.dart';
import 'package:flutter_app/screens/homeScreen.dart';
import 'package:flutter_app/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        LoginScreen.id: (context) => LoginScreen(),
       MentorListScreen.id: (context) => MentorListScreen(),
      },
    );
  }
}
