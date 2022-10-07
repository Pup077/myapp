import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

import 'datapage.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        drawer: Drawer(
          backgroundColor: Colors.grey[300],
          child: Column(children: [
            DrawerHeader(child: Icon(Icons.nature)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('หน้าแรก'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MobileScaffold()),
                  ).then((value) => null);
                }),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('ข้อมูล'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Datapage()),
                ).then((value) => null);
              },
            ),
            ListTile(
                leading: Icon(Icons.show_chart),
                title: Text('สถิติ'),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.textsms),
                title: Text('ติดต่อ'),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.warning),
                title: Text('แจ้งปัญหา'),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.description),
                title: Text('แสดงผล'),
                onTap: () {}),
          ]),
        ),
        body: Container(
            padding: EdgeInsets.all(24),
            child: ListView(children: [
              Text(
                'ผลการตรวจ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(spacing: 40, children: <Widget>[
                Image.network(
                  'http://jaowoffice.weebly.com/uploads/9/3/3/6/9336781/1684958_orig.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'http://jaowoffice.weebly.com/uploads/9/3/3/6/9336781/1684958_orig.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ]),
              const SizedBox(height: 20),
              Text(
                'ความถูกต้อง: 95%',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'โรค: ขอบใบแห้ง',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'สาเหตุ: เกิดในช่วงที่เริ่มมีความร้อนความแห้งแล้ง การได้รับน้ำที่ไม่เพียงพอ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'การแก้ไข: \n1. ปรับการรับแสงโดยใช้การ "พรางแสง" เพื่อช่วยลดการรับแสงที่มากเกินไปในบริเวณปลายราก\n 2.แก้ไขการให้น้ำให้อยู่ในบริเวณพุ่มของต้น\n 3.เสริมภูมิคุ้มกันด้วย อะนิโนโปรตีนและแมกนีเซียม \n 4.ใช้สารกลุ่มพาราฟินออย ช่วยเคลือบผิวใบป้องกันความร้อนได้',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ])));
  }
}
