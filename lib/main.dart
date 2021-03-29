import 'package:flutter/material.dart';
import 'package:learning/model/sidebar.dart';

import 'components/sidebar_row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Container(
                child: SidebarRow(item: sidebarItem[1],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


