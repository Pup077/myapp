import 'package:flutter/material.dart';
import 'package:myapp/progress.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

import 'constants.dart';
import 'datapage.dart';

class Datapagetwo extends StatefulWidget {
  const Datapagetwo({super.key});

  @override
  State<Datapagetwo> createState() => _DatapagetwoState();
}

class _DatapagetwoState extends State<Datapagetwo> {
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
              'โรคใบจุดทุเรียน',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
                'https://www.unilife.co.th/wp-content/uploads/2021/05/3-1.jpg'),
            const SizedBox(height: 20),
            Text(
              'โรคใบจุดในทุเรียน',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
                'โรคใบจุด หรือ แอนแทรคโนส( Leaf blight, Leaf spot, Anthracnose) คือ โรคที่เกิดจากเชื้อรา Colletotrichum gloeosporioides อาการในระยะใบอ่อนที่แผ่กางเต็มใบจะมีอาการซีดจาง หรือเป็นจุดเล็กๆสีเหลืองอ่อน ต่อมาเชื้อราเจริญเติบโตมากขึ้น ขอบแผลจะมีสีน้ำตาล ส่วนตรงกลางของแผลจะแห้งและเป็นสีน้ำตาล',
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
              'เกิดจากเชื้อรา Colletotrichum gloeosporioides',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'อาการโรคใบจุด',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'ในระยะใบอ่อนที่แผ่กางเต็มใบจะปรากฏอาการซีดจาง หรือเหลืองอ่อนเป็นจุดเล็กๆ ต่อมาเมื่อเชื้อพัฒนามากขึ้น ขอบแผลจะมีสีเข้ม เนื้อแผลส่วนกลางแห้งเป็นสีน้ำตาล และเกิดเป็นจุดดำๆเล็กๆบริเวณกลางแผล ซึ่งเป็นส่วนขยายพันธุ์ของเชื้อรา แอนแทรคโนส ต่อมาใบจะเหลืองร่วง',
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
              'ส่วนมากจะพบเป็นกับทุเรียนพันธุ์ชะนี ในทุเรียนหมอนทองพบอาการบ้างแต่ไม่รุนแรง เชื้อสาเหตุของโรคแพร่ระบาดไปตามลม เข้าทำลายพืชเมื่อมีสภาพแวดล้อมเหมาะสม อากาศร้อนและมีความชื้นสูง',
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
