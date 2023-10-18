import 'package:flutter/material.dart';
import 'package:todo_firebase/auth/authscreen.dart';
import 'package:todo_firebase/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      primaryColor: Colors.blue,
      )
    );
  }
}


