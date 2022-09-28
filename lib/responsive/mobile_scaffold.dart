import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

import '../datapage.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
              leading: Icon(Icons.home), title: Text('หน้าแรก'), onTap: () {}),
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
        ]),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Text(
              'รู้ทัน',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              'พืช',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'ข้อมูลต่าง ๆ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            Container(
                padding: EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Ink.image(
                    image: NetworkImage(
                        'https://www.allkaset.com/content/131220165007.jpg'),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                )),
            const SizedBox(height: 20),
            Text(
              'แผนที่สถิติ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
