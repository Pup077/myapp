import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

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
      drawer: myDrawer,
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
