import 'package:flutter/material.dart';
import 'package:tbc_1/screens/auth/login.dart';
import 'package:tbc_1/screens/auth/signup.dart';
import 'package:tbc_1/screens/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TBC',
      theme: ThemeData(
        // ignore: prefer_const_constructors
        scaffoldBackgroundColor: Color(0xffede7Dc) ,
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: TasksScreen(),
    );
  }
}
