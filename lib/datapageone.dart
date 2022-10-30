import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/progress.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

import 'constants.dart';
import 'datapage.dart';

class Datapageone extends StatefulWidget {
  const Datapageone({super.key});

  @override
  State<Datapageone> createState() => _DatapageoneState();
}

class _DatapageoneState extends State<Datapageone> {
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Progress()),
                ).then((value) => null);
              }),
        ]),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Text(
              'โรคใบไหม้ทุเรียน',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
                'https://www.unilife.co.th/wp-content/uploads/2021/04/4.1.png'),
            const SizedBox(height: 20),
            Text(
              'โรคขอบใบไหม้ในทุเรียน',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
                'โรคใบไหม้ ใบติดในทุเรียน คือ โรคที่เกิดจากเชื้อรา Phomopsis sp. โดยเชื้อจะเข้าทำลายที่ปลายใบและขอบใบไม้ จุดที่เกิดโรคจะมีเนื้อใบไม้ที่แห้งเป็นสีน้ำตาลแดงก่อนและต่อมาเปลี่ยนเป็นสี ขาวอมเทา และเมื่อเชื้อเจริญเติบโตจะทำความเสียหายกับใบทุเรียน โรคใบไหม้ แพร่ระบาดไปโดย ลม ฝน และ เนื้อเยื่อใบที่แห้ง',
                style: TextStyle(
                  fontSize: 15,
                )),
            const SizedBox(height: 15),
            Text(
              'สาเหตุโรค',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'โรคใบไหม้เกิดจากเชื้อรา Phomopsis sp.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'อาการโรคใบจุด ขอบใบไหม้',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'ส่วนมากเชื้อจะเข้าทำลายที่บริเวณปลายใบไม้และขอบใบไม้ก่อน เกิดอาการปลายใบแห้ง และ ขอบใบแห้ง ที่จุดเชื้อสาเหตุเข้าทำลาย เนื้อใบส่วนนั้นจะแห้งเป็นสีน้ำตาลแดงในระยะแรก และต่อมาจะเปลี่ยนเป็นสีขาวอมเทา และเชื้อจะเจริญพัฒนาทำความเสียหายกับใบทุเรียน ขยายขนาดของพื้นที่เนื้อใบแห้งออกไปเรื่อยๆ เนื้อใบส่วนที่แห้งสีขาวอมเทามีการสร้างส่วนขยายพันธุ์เป็นเม็ดสีดำกระจัดกระจายเต็มพื้นที่',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'การแพร่ระบาดของโรค',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'ส่วนขยายพันธุ์ที่ถูกสร้างขึ้นมาจะแพร่ระบาดไปโดยลม และ ฝน และ จากเนื้อเยื่อใบที่แห้งและหล่นตกค้างอยู่มี่ใต้โคนต้น เชื้อสามารถเข้าทำลายได้ทั้งใบอ่อนและใบแก่',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
