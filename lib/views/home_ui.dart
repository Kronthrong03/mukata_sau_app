// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:mukata_sau_app/views/about_ui.dart';
import 'package:mukata_sau_app/views/calculate_pay_bill_ui.dart';
import 'package:mukata_sau_app/views/menu_shop_ui.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
//สร้างตัวแปรเก็บหน้าจอ (UI) ที่จะใช้กับ ButtomBar
  List<Widget> _ShowUI = [
    CalculatePayBillUI(),
    MenushopUI(),
    AboutUI(),
  ];

//สร้างตัวแปรกำหนดหน้าจอที่จะเเสดงสำหรับ Buttombar
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        initialActiveIndex: _currentIndex,
        backgroundColor: Colors.red,
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.moneyBill,
              color: Colors.green,
            ),
            title: 'คิดเงิน',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.black,
            ),
            title: 'HOME',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.info,
              color: Colors.grey,
            ),
            title: 'เกี่ยวกับ',
          ),
        ],
      ),
      body: _ShowUI[_currentIndex],
    );
  }
}
