import 'package:flutter/material.dart';
import 'package:learning/components/home_screen_nav_bar.dart';
import 'package:learning/components/list/explore_list.dart';
import 'package:learning/components/list/recent_course_list.dart';
import 'package:learning/screens/sidebar_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constants.dart';
import 'continue_watching_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  //Animation Controller
  Animation<Offset> sidebarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sidebarAnimationController;

  var sidebarHidden = true;

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
          parent: sidebarAnimationController, curve: Curves.easeInOut),
    );
    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
          parent: sidebarAnimationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    super.dispose();
    sidebarAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Animation Controller
                  HomeScreenNavBar(
                    triggerAnimation: () {
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });
                      sidebarAnimationController.forward();
                    },
                  ),
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
                      Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          "Explore:",
                          style: kLargeTitleStyle,
                        ),
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
            ContinueWatchingScreen(),
            //Animation Controller
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      child: Container(
                        color: Color.fromRGBO(36, 38, 41, 0.4),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                      onTap: () {
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });
                        sidebarAnimationController.reverse();
                      },
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}






