import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

import '../responsivedate/desktop_date.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(children: [
        // open drawer
        Drawer(
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
                  MaterialPageRoute(builder: (context) => DesktopDate()),
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

        // rest of body
      ]),
    );
  }
}
