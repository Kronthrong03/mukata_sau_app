
import 'dart:ffi';
import 'dart:io';
 
import 'package:flutter/material.dart';
 
class ShowPayBillUI extends StatefulWidget {
  String? adult;
  String? baby;
  int? water;
  String? coke;
  String? pure;
  String? memberType;
  double? totalPay;
  File? imagesFile;
 
  // รับค่าจากหน้าคิดเงิน
    ShowPayBillUI({
      super.key,
      this.adult,
      this.baby,
      this.water,
      this.coke,
      this.pure,
      this.memberType,
      this.totalPay,
      this.imagesFile,
  });
 
  @override
  State<ShowPayBillUI> createState() => _ShowPayBillUIState();
}
 
class _ShowPayBillUIState extends State<ShowPayBillUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'ชำระเงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              widget.imagesFile == null
                ? Image.asset(
                  'assets/images/camera.jpg',
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.width * 0.35,
                  fit: BoxFit.cover,
                )
                : Image.file(
                  widget.imagesFile!,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.width * 0.35,
                  fit: BoxFit.cover,
                ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'จำนวนคน',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ผู้ใหญ่  ',
                  ),
                  Text(
                    widget.adult!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  คน',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'เด็ก  ',
                  ),
                  Text(
                    widget.baby!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  คน',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'บุฟเฟต์น้ำดื่ม',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Text(
                widget.water == 1 ? 'รับ':'ไม่รับ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Colors.deepOrange,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'โค้ก จำนวน  ',
                  ),
                  Text(
                    widget.coke!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  ขวด',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'น้ำเปล่าจำนวน  ',
                  ),
                  Text(
                    widget.pure!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    '  ขวด',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'ประเภทสมาชิก',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height * 0.035),
              ),
              Text(
                widget.memberType!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'รวมเป็นเงินทั้งสิ้น (บาท)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.125,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                ),
                child: Text(
                  widget.totalPay!.toStringAsFixed(2),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Image.asset(
                'assets/images/sauqr.png',
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.35,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}