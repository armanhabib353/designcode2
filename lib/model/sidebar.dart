import 'package:flutter/material.dart';

class SidebarItem {

  SidebarItem({this.title, this.background, this.icon});

  String title;
  LinearGradient background;
  Icon icon;
}


var sidebarItem = [
  SidebarItem(
    title: "Home",
    background: LinearGradient(
      colors: [
        Color(0xFF64CEFF),
        Color(0xFF64FFDA),
      ],
    ),
    icon: Icon(Icons.home, color: Colors.white,),
  ),
  SidebarItem(
    title: "Account",
    background: LinearGradient(
      colors: [
        Color(0xFF74FF64),
        Color(0xFF64D3FF),
      ],
    ),
    icon: Icon(Icons.account_balance, color: Colors.white,),
  ),
  SidebarItem(
    title: "Billings",
    background: LinearGradient(
      colors: [
        Color(0xFFF064FF),
        Color(0xFFFF64DD),
      ],
    ),
    icon: Icon(Icons.credit_card, color: Colors.white,),
  ),
  SidebarItem(
    title: "Profile",
    background: LinearGradient(
      colors: [
        Color(0xFFFFE564),
        Color(0xFFFFAC64),
      ],
    ),
    icon: Icon(Icons.people, color: Colors.white,),
  ),
  SidebarItem(
    title: "Settings",
    background: LinearGradient(
      colors: [
        Color(0xFF6479FF),
        Color(0xFFA564FF),
      ],
    ),
    icon: Icon(Icons.settings, color: Colors.white,),
  ),
];