import 'package:flutter/material.dart';
import 'package:learning/model/course.dart';

import '../../constants.dart';

class ContinueWatchingCard extends StatelessWidget {
  ContinueWatchingCard({@required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: course.background,
                boxShadow: [
                  BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                  BoxShadow(
                    color: course.background.colors[1].withOpacity(0.3),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(41.0),
                child: Container(
                  height: 140.0,
                  width: 260.0,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                "asset/illustrations/${course.illustration}",
                                fit: BoxFit.cover,
                                height: 110.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: Container(
              child: Image.asset(
                'asset/icons/icon-play.png',
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
              padding: EdgeInsets.only(
                  top: 12.5, left: 20.5, right: 14.5, bottom: 13.5),
            ),
          ),
        ],
      ),
    );
  }
}

