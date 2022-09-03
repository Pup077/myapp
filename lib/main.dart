import 'package:flutter/material.dart';
import 'package:myapp/responsive/desktop_scaffold.dart';
import 'package:myapp/responsive/mobile_scaffold.dart';
import 'package:myapp/responsive/responsive_layout.dart';
import 'package:myapp/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        destopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
