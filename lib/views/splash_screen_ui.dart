// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mukata_sau_app/views/home_ui.dart';

class SplashscreenUI extends StatefulWidget {
  const SplashscreenUI({super.key});

  @override
  State<SplashscreenUI> createState() => _SplashscreenUIState();
}

class _SplashscreenUIState extends State<SplashscreenUI> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
        Duration(seconds: 3),
        () => (Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ))));
            super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Copyright 🍽️ 2024 by NaTT',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
