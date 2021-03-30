import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/constants.dart';
import 'package:learning/model/course.dart';
import 'components/home_screen_nav_bar.dart';
import 'components/list/explore_list.dart';
import 'components/list/recent_course_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent",
                        style: kLargeTitleStyle,
                      ),
                      Text(
                        "This Course is 13 Section",
                        style: kSubtitleStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RecentCourseList(),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore:",
                      style: kLargeTitleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExploreCardList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




