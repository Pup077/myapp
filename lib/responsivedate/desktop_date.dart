import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class DesktopDate extends StatefulWidget {
  const DesktopDate({Key? key}) : super(key: key);

  @override
  State<DesktopDate> createState() => _DesktopDateState();
}

class _DesktopDateState extends State<DesktopDate> {
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
              onTap: () {},
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
