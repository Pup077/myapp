import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/datapagethree.dart';
import 'package:myapp/datapagetwo.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

import 'datapageone.dart';

class Datapage extends StatefulWidget {
  const Datapage({super.key});

  @override
  State<Datapage> createState() => _DatapageState();
}

class _DatapageState extends State<Datapage> {
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
      ),
      body: Center(
        child: Material(
          color: Colors.green,
          elevation: 8,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Datapageone()),
              ).then((value) => null);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: NetworkImage(
                      'https://www.unilife.co.th/wp-content/uploads/2021/04/4.1.png'),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 6),
                Text(
                  'โรคใบไหม้ทุเรียน',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                SizedBox(height: 6),
                Material(
                  color: Colors.green,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Datapagetwo()),
                      ).then((value) => null);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: NetworkImage(
                              'https://www.unilife.co.th/wp-content/uploads/2021/05/3-1.jpg'),
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'โรคใบจุดทุเรียน',
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                        SizedBox(height: 6),
                        Material(
                          color: Colors.green,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Datapagethree()),
                              ).then((value) => null);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://www.blackpigchemical.com/wp-content/uploads/2020/11/12-1.jpg'),
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'โรคใบจุดสนิมทุเรียน',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.white),
                                ),
                                SizedBox(height: 6),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
