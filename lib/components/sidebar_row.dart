import 'package:flutter/material.dart';
import 'package:learning/model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({@required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: item.background
          ),
          child: item.icon,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          item.title,
          style:
          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
