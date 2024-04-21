// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';

import '../main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => MyApp())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "French Letter",
          style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'sans-serif',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
