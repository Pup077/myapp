import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

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
      drawer: myDrawer,
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
                child: Wrap(spacing: 30, children: <Widget>[
                  Image.network(
                    'https://www.allkaset.com/content/131220165007.jpg',
                    width: 150,
                  ),
                  Image.network(
                    'http://www.allkaset.com/content/131220165019.jpg',
                    width: 150,
                  ),
                ])),
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
