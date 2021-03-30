import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learning/constants.dart';
import 'package:learning/model/course.dart';
import 'components/cards/recent_course_card.dart';

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
                      Text("Recent", style: kLargeTitleStyle,),
                      Text("This Course is 13 Section", style: kSubtitleStyle,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                RecentCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class RecentCourseList extends StatefulWidget {
  @override
  _RecentCourseListState createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      child: PageView.builder(
          itemBuilder: (context, index) {
            return RecentCourseCard(course: recentCourses[index]);
          },
          itemCount: recentCourses.length,
        controller: PageController(initialPage: 0, viewportFraction: 0.63),
      ),
    );
  }
}












class HomeScreenNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(),
          SearchFieldWidget(),
          Icon(Icons.notifications),
          SizedBox(width: 14,),
          CircleAvatar(backgroundImage: AssetImage('asset/images/profile.jpg'),)
        ],
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 25),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16)
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search For it",
                icon: Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20,
                ),
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchTextStyle,
              onChanged: (newText) {
                print(newText);
              },
            ),
          ),
        ),
      ),
    );
  }
}


class SidebarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print('side bar button pressed');
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(maxWidth: 45, maxHeight: 45),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16,
              ),
            ]),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
