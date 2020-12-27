import 'package:design_ui_code/components/cards/explore_course_card.dart';
import 'package:design_ui_code/model/course.dart';
import 'package:flutter/material.dart';



class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}

