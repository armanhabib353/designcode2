import 'package:flutter/material.dart';
import 'package:learning/model/course.dart';

import '../../constants.dart';


class ExploreCard extends StatelessWidget {
  ExploreCard({@required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 280,
      decoration: BoxDecoration(gradient: course.background),
      child: Row(
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(course.courseSubtitle, style: kCardSubtitleStyle,),
              SizedBox(height: 6,),
              Text(course.courseTitle, style: kCardTitleStyle,),
            ],
          ))
        ],
      ),
    );
  }
}