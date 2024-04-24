// ignore_for_file: prefer_const_constructors, prefer_final_fields
 
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mukata_sau_app/views/show_pay_bill_ui.dart';
 
class CalculatePayBillUI extends StatefulWidget {
  const CalculatePayBillUI({super.key});
 
  @override
  State<CalculatePayBillUI> createState() => _CalculatePayBillUIState();
}
 
class _CalculatePayBillUIState extends State<CalculatePayBillUI> {
  List<String> _memberType = [
    'ไม่เป็นสมาชิก',
    'สมาชิก Silver Member ลด 5%',
    'สมาชิก Gold Member Member ลด 10%',
    'สมาชิก Platium Member ลด 20%',
  ];
 
  String _memberTypeSelected = 'ไม่เป็นสมาชิก';
 
  File? _imgeFromCamera;
 
  Future getImageFromecamera() async {
    final Image = await ImagePicker().pickImage(source: ImageSource.camera);
 
    if (Image == null) return;
 
    setState(() {
      _imgeFromCamera = File(Image.path);
    });
  }
 
  bool adultStatus = false;
  bool babyStatus = false;
 
  int waterstatus = 1;
 
  TextEditingController adultCtrl = TextEditingController(text: '0');
  TextEditingController babyCtrl = TextEditingController(text: '0');
  TextEditingController cokeCtrl = TextEditingController(text: '0');
  TextEditingController pureCtrl = TextEditingController(text: '0');
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50.0,
            right: 50.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    getImageFromecamera();
                  },
                  child: _imgeFromCamera == null
                      ? Image.asset(
                          'assets/images/camera.jpg',
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          _imgeFromCamera!,
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'จำนวนคน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: adultStatus,
                      onChanged: (paramValue) {
                        setState(() {
                          adultStatus = adultStatus == true ? false : true;
                        });
                      },
                    ),
                    Text(
                      'ผู้ใหญ่ 299 บาท/คน จำนวน  ',
                    ),
                    Expanded(
                      child: TextField(
                        controller: adultCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Text(
                      'คน ',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: babyStatus,
                      onChanged: (paramValue) {
                        setState(() {
                          babyStatus = babyStatus == true ? false : true;
                        });
                      },
                    ),
                    Text(
                      'เด็ก 69 บาท/คน จำนวน      ',
                    ),
                    Expanded(
                      child: TextField(
                        controller: babyCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Text(
                      'คน ',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'บึปเฟต์น้ำดื่ม',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: waterstatus,
                      onChanged: (paramValue) {
                        setState(() {
                          waterstatus = paramValue!;
                        });
                      },
                    ),
                    Text('รับ 25 บาท/หัว'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: waterstatus,
                      onChanged: (paramValue) {
                        setState(() {
                          waterstatus = paramValue!;
                        });
                      },
                    ),
                    Text('ไม่รับ'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '                  โค้ก 20 บาท/ขวด จำนวน',
                    ),
                    Expanded(
                      child: TextField(
                        controller: cokeCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Text(
                      'ขวด ',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '                  น้ำเปล่า 15 บาท/ขวด จำนวน',
                    ),
                    Expanded(
                      child: TextField(
                        controller: pureCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Text(
                      'ขวด ',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ประเภทสามชิก',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                DropdownButton(
                  items: _memberType
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                            ),
                          ))
                      .toList(),
                  onChanged: (paramValue) {
                    setState(() {
                      _memberTypeSelected = paramValue!;
                    });
                  },
                  value: _memberTypeSelected,
                  isExpanded: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          //คิดผ
                          double adultPay = adultStatus == false
                              ? 0
                              : (int.parse(adultCtrl.text) * 299);
 
                          //คืดด
                          double babyPay = babyStatus == false
                              ? 0
                              : (int.parse(babyCtrl.text) * 69);
 
                          //คืดน บ ค นป
                          double waterPay = waterstatus == 1
                              ? (int.parse(adultCtrl.text) +
                                      int.parse(babyCtrl.text)) *
                                  25
                              : 0;
 
                          //คืด ค
                          double cokePay = int.parse(cokeCtrl.text) * 15;
 
                          //คืดลด
                          double purePay = int.parse(pureCtrl.text) * 15;
 
                          //คำรวมลด
                          double totalPay =
                              adultPay + babyPay + waterPay + cokePay + purePay;
 
                          //ส่วนลด
                          if (_memberTypeSelected == 'ไม่เป็นสามชิก') {
                            totalPay = totalPay;
                          } else if (_memberTypeSelected ==
                              'สมาชิก Silver Member ลด 5%') {
                            totalPay = totalPay - (totalPay * 5 / 100);
                          } else if (_memberTypeSelected ==
                              'สมาชิก Gold Member Member ลด 10%') {
                            totalPay = totalPay - (totalPay * 10 / 100);
                          } else {
                            totalPay = totalPay - (totalPay * 20 / 100);
                          }
 
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowPayBillUI(
                                adult: adultCtrl.text,
                                baby: babyCtrl.text,
                                water: waterstatus,
                                coke: cokeCtrl.text,
                                pure: pureCtrl.text,
                                totalPay: totalPay,
                                memberType: adultCtrl.text,
                                imagesFile: _imgeFromCamera,
                              ),
                            ),
                          );
                        },
                        icon: Icon(
                          FontAwesomeIcons.calculator,
                          color: Colors.white,
                        ),
                        label: Text(
                          'คำนวณเงิน',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fixedSize: Size(
                            double.infinity,
                            55.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white,
                        ),
                        label: Text(
                          'ยกเลิก',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fixedSize: Size(
                            double.infinity,
                            55.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}