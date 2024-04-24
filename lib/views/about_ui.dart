// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/saulogo.png',
              width: MediaQuery.of(context).size.width * 0.50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 25),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'แอปพลิเคชันร้านหมูกระทะ',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 103, 103),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Text(
              'เพื่อคนไทย',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 103, 103),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Text(
              'โดยเด็กไทย',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 103, 103),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Text(
              'สนใจแอปพลิเคชันติดต่อ',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 103, 103),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Text(
              'เด็กไอที SAU',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 103, 103),
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/sauqr.png',
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}