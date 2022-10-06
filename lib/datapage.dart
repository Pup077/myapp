import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';

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
      body: Container(
        padding: EdgeInsets.all(24),
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
        ),
      ),
    );
  }
}
