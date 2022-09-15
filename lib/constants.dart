import 'dart:js';

import 'package:flutter/material.dart';

import 'datapage.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.green,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: [
    DrawerHeader(child: Icon(Icons.nature)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('หน้าแรก'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Datapage()),
        ).then((value) => null);
      },
    ),
    ListTile(
      leading: Icon(Icons.library_books),
      title: Text('ข้อมูล'),
    ),
    ListTile(
      leading: Icon(Icons.show_chart),
      title: Text('สถิติ'),
    ),
    ListTile(
      leading: Icon(Icons.textsms),
      title: Text('ติดต่อ'),
    ),
    ListTile(
      leading: Icon(Icons.warning),
      title: Text('แจ้งปัญหา'),
    ),
  ]),
);
