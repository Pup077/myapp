import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

import '../datapage.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(children: [
          DrawerHeader(child: Icon(Icons.nature)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('หน้าแรก'),
            onTap: () {},
          ),
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.textsms),
            title: Text('ติดต่อ'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.warning),
            title: Text('แจ้งปัญหา'),
            onTap: () {},
          ),
        ]),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
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
          Text('ข้อมูลต่าง ๆ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))
        ],
      ),
    );
  }
}
