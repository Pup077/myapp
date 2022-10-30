import 'package:flutter/material.dart';
import 'package:myapp/progress.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

import 'constants.dart';
import 'datapage.dart';

class Datapagethree extends StatefulWidget {
  const Datapagethree({super.key});

  @override
  State<Datapagethree> createState() => _DatapagethreeState();
}

class _DatapagethreeState extends State<Datapagethree> {
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
              'โรคใบจุดสนิมทุเรียน',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
                'https://www.blackpigchemical.com/wp-content/uploads/2020/11/12-1.jpg'),
            const SizedBox(height: 20),
            Text(
              'โรคใบจุดสนิมในทุเรียน',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
                'โรคจุดสนิมทุเรียน หรือ จุดสาหร่าย คือ โรคที่เกิดจาก สาหร่าย Cephaleuros virescens Kunzeโดยมีอาการคือ ใบแก่ของทุเรียนจะมีจุดฟูเขียวแกมเหลืองของสาหร่าย เกิดกระจายบนใบทุเรียน จุดจะพัฒนาและขยายออกและเปลี่ยนเป็นสีเหลืองแกมส้มและในช่วงนี้สาหร่ายจะขยายพันธ์แพร่ระบาดต่อไป',
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
              'เกิดจากสาหร่าย Cephaleuros virescens Kunze',
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
              'ใบแก่ของทุเรียนแสดงอาการจุดฟูเขียวแกมเหลืองของสาหร่าย เกิดกระจายบนใบทุเรียน จุดจะพัฒนาและขยายโตออกไปและเปลี่ยนเป็นสีเหลืองแกมส้ม ซึ่งเป็นระยะที่สาหร่ายสร้างส่วนขยายพันธุ์ เพื่อใช้ในการแพร่ระบาด ส่วนมากพบจุดสาหร่ายที่ด้านบนขอบใบ ส่งผลให้การสังเคราะห์แสงของทุเรียนสดลง',
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
              'สาหร่ายแพร่ระบาดไปกับลมและพายุฝน เข้าทำลายในสภาพอากาศที่มีความชื้นสูง นอกจากนี้ น้ำก็เป็นพาหะนำสปอร์ไปสู่ต้นอื่นได้เช่นเดียวกัน พบระบาดทั่วไปในสวนทุเรียนที่มีทรงพุ่มหนาทึบ และมีความชุ่มชื้นสูงเป็นระยะเวลานานๆ การระบาดจะพบมากในช่วงฤดูฝน ที่การดูแลรักษา และ การพ่นสารป้องกันกำจัดศัตรูพืชปฏิบัติได้ค่อนข้างยาก',
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
