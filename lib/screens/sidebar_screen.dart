import 'package:flutter/material.dart';
import 'package:learning/components/sidebar_row.dart';
import 'package:learning/model/sidebar.dart';

import '../constants.dart';


class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.73,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(42),
          )),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/images/arman.jpg'),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Arman Habib",style: kTitle1Style,),
                      SizedBox(height: 5,),
                      Text("IOS developer", style: kSubtitleStyle,),
                    ],
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.15,),

              SidebarRow(
                item: sidebarItem[0],
              ),
              Divider(),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[1],
              ),
              Divider(),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[2],
              ),
              Divider(),
              SizedBox(
                height: 25,
              ),
              SidebarRow(
                item: sidebarItem[3],
              ),
              Divider(),
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
