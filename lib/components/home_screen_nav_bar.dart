import 'package:flutter/material.dart';
import 'package:learning/components/search_field_widget.dart';
import 'package:learning/components/sidebar_button.dart';
import 'package:learning/screens/profile_screen.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({@required this.triggerAnimation});

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          SearchFieldWidget(),
          Icon(Icons.notifications),
          SizedBox(
            width: 14,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('asset/images/arman.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
