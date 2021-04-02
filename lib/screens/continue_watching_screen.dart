import 'package:flutter/material.dart';
import 'package:learning/model/course.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constants.dart';

class ContinueWatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(41),
      ),
      minHeight: 85,
      maxHeight: MediaQuery.of(context).size.height * 0.70,
      color: kCardPopupBackgroundColor,
      boxShadow: [
        BoxShadow(color: kShadowColor, offset: Offset(0, -12), blurRadius: 32)
      ],
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 16),
              child: Container(
                height: 3,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFF956B5E)
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Continue Watching", style: kTitle1Style,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Certificates", style: kTitle1Style,),
          ),
        ],
      ),
    );
  }
}



class ContinueWatchingList extends StatefulWidget {
  @override
  _ContinueWatchingListState createState() => _ContinueWatchingListState();
}

class _ContinueWatchingListState extends State<ContinueWatchingList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: continueWatchingCourses.map((course) {
        var index = continueWatchingCourses.indexOf(course);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return ContinueWatchingCard(course: continueWatchingCourses[index],);
            },
            itemCount: continueWatchingCourses.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.70),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}









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
              padding: EdgeInsets.only(top: 12.5,
              left: 20.5,
                right: 14.5,
                bottom: 13.5
              ),
            ),
          ),
        ],
      ),
    );
  }
}

