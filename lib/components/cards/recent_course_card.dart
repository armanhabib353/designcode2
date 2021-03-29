import 'package:flutter/material.dart';
import 'package:learning/model/course.dart';

import '../../constants.dart';


class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({@required this.course});

  Course course;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: course.background,
                  boxShadow: [
                    BoxShadow(
                      color: course.background.colors[0].withOpacity(0.3),
                      offset: Offset(0, 4),
                      blurRadius: 16,
                    ),
                    BoxShadow(
                      color: course.background.colors[1].withOpacity(0.3),
                      offset: Offset(0, 4),
                      blurRadius: 16,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32, left: 32, right: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course.courseTitle, style: kCardSubtitleStyle),
                        Text(
                          course.courseTitle,
                          style: kCardTitleStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "asset/illustrations/${course.illustration}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: Container(
              child: Image.asset(
                'asset/logos/${course.logo}',
              ),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 16.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

