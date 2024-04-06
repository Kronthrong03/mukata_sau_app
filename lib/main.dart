// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukata_sau_app/views/home_ui.dart';
import 'package:mukata_sau_app/views/menu_shop_ui.dart';
import 'package:mukata_sau_app/views/splash_screen_ui.dart';

void main(){
  runApp(const MyApp());
}

//---------------------
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.srirachaTextTheme(
          Theme.of(context).textTheme,
        )
      ),
    );
  }
}