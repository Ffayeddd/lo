import 'package:finalll/pages/login.dart';
import 'package:finalll/pages/signup.dart';
import 'package:finalll/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes:{
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup":(context) => const Signup()
      },
    );
  }
}
