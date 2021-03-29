import 'package:flutter/material.dart';
import 'package:learning/constants.dart';
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
        body: SidebarScreen(),
      ),
    );
  }
}

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(42),
          )),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/images/profile.jpg'),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Arman Habib"),
                      SizedBox(height: 5,),
                      Text("IOS developer"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.15,),

              SidebarRow(
                item: sidebarItem[0],
              ),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[1],
              ),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[2],
              ),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[3],
              ),
              SizedBox(
                height: 25,
              ),
              Spacer(),
              Row(
                children: [
                  Image.asset('asset/icons/icon-logout.png', width: 17,),
                  SizedBox(width: 15,),
                  Text("Logout"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
