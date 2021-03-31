import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/constants.dart';
import 'package:learning/model/course.dart';
import 'package:learning/screens/sidebar_screen.dart';
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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

 //Animation Controller
  Animation<Offset> sidebarAnimation;

  AnimationController sidebarAnimationController;

  @override
  void initState() {
    super.initState();
    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
          parent: sidebarAnimationController,
          curve: Curves.easeInOut),
    );
  }
  //Animation Controller Finished

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Animation Controller
                  HomeScreenNavBar(triggerAnimation: () {
                    sidebarAnimationController.forward();
                  },),
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
            //Animation Controller
            SlideTransition(
              position: sidebarAnimation,
              child: SafeArea(
                child: SidebarScreen(),
                bottom: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
