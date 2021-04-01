import 'package:flutter/material.dart';
import 'package:learning/components/cards/explore_card.dart';
import 'package:learning/model/course.dart';

class ExploreCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 :0.0),
            child: ExploreCard(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}
