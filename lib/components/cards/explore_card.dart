import 'package:flutter/material.dart';
import 'package:learning/model/course.dart';

import '../../constants.dart';

class ExploreCard extends StatelessWidget {
  ExploreCard({@required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(41.0),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(
            gradient: course.background,
            // borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("asset/illustrations/${course.illustration}",
                  height: 100,
                  fit: BoxFit.cover,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
