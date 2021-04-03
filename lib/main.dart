import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/constants.dart';
import 'package:learning/model/course.dart';
import 'package:learning/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class CourseScreen extends StatefulWidget {
  CourseScreen({this.course});

  final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                overflow: Overflow.clip,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          gradient: widget.course.background),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: SafeArea(
                      bottom: false,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Hero(
                                      tag: widget.course.logo,
                                      child: Image.asset(
                                          'asset/logos/${widget.course.logo}'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Hero(
                                          tag: widget.course.courseSubtitle,
                                          child: Text(
                                            widget.course.courseSubtitle,
                                            style: kSecondaryCalloutLabelStyle
                                                .copyWith(color: Colors.white70),
                                          ),
                                        ),
                                        Hero(
                                          tag: widget.course.courseTitle,
                                          child: Text(
                                            widget.course.courseTitle,
                                            style: kLargeTitleStyle.copyWith(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                    child: Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kPrimaryLabelColor.withOpacity(0.8),
                                      ),
                                      child: Icon(Icons.close, color: Colors.white,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 28.0,),
                            Expanded(
                              child: Hero(
                                tag: widget.course.illustration,
                                child: Image.asset('asset/illustrations/${widget.course.illustration}',
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                                width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(right: 28.0),
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 12.5,
                      bottom: 13.5,
                      left: 20.5,
                      right: 14.5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: kShadowColor,
                          offset: Offset(0, 4),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    height: 60.0,
                    width: 60.0,
                    child: Image.asset('asset/icons/icon-play.png'),
                  ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  left: 28.0,
                  right: 28.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Row(
                       children: [
                         Container(
                           child: Padding(
                             padding: EdgeInsets.all(4.0),
                             child: Container(
                               padding: EdgeInsets.all(4.0),
                               child: CircleAvatar(
                                 child: Icon(
                                   Platform.isAndroid ? Icons.people : CupertinoIcons.group_solid,
                                   color: Colors.white,
                                 ),
                                 radius: 21.0,
                                 backgroundColor: kCourseElementIconColor,
                               ),
                               decoration: BoxDecoration(
                                 color: kBackgroundColor,
                                 borderRadius: BorderRadius.circular(29.0),
                               ),
                             ),
                           ),
                           height: 58,
                           width: 58,
                           decoration: BoxDecoration(
                             gradient: widget.course.background,
                             borderRadius: BorderRadius.circular(29.0),
                           ),
                         ),
                         SizedBox(width: 12.0,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("28.7k", style: kTitle1Style,),
                             Text("Student", style: kSearchPlaceholderStyle,),
                           ],
                         ),
                       ],
                     ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                child: Icon(
                                  Platform.isAndroid ? Icons.comment : CupertinoIcons.news_solid,
                                  color: Colors.white,
                                ),
                                radius: 21.0,
                                backgroundColor: kCourseElementIconColor,
                              ),
                              decoration: BoxDecoration(
                                color: kBackgroundColor,
                                borderRadius: BorderRadius.circular(29.0),
                              ),
                            ),
                          ),
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            gradient: widget.course.background,
                            borderRadius: BorderRadius.circular(29.0),
                          ),
                        ),
                        SizedBox(width: 12.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("12.4k", style: kTitle1Style,),
                            Text("Comments", style: kSearchPlaceholderStyle,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("As a developer, your goal should be to create designs that are as objectively good as possible, using design systems, well-established principles and techniques that translate well to code. You should work on your speed, since you don’t want to steal away from your coding time. My goal is to get you to be satisfied with your designs and to find a system to consistently improve over time by not only explaining the foundations of UI design, but my personal insights on how it's feasible to divide your time between design and code. We'll be using free icons and illustrations from", style: kBodyLabelStyle,),
                    SizedBox(height: 24.0,),
                    Text("About this course", style: kTitle1Style,),
                    SizedBox(height: 24.0,),
                    Text("As a developer, your goal should be to create designs that are as objectively good as possible, using design systems, well-established principles and techniques that translate well to code. You should work on your speed, since you don’t want to steal away from your coding time. My goal is to get you to be satisfied with your designs and to find a system to consistently improve over time by not only explaining the foundations of UI design, but my personal insights on how it's feasible to divide your time between design and code. We'll be using free icons and illustrations from", style: kBodyLabelStyle,),
                    SizedBox(height: 30.0,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
