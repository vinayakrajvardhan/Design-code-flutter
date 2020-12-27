import 'package:design_ui_code/components/cards/recent_course_card.dart';
import 'package:design_ui_code/main.dart';
import 'package:design_ui_code/model/course.dart';
import 'package:design_ui_code/screen/course_screen.dart';
import 'package:flutter/material.dart';

class RecentCourseList extends StatefulWidget {
  @override
  _RecentCourseListState createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  List<Container> indicator = [];
  int currentPage = 0;

  Widget updateIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCourses.map(
        (course) {
          var index = recentCourses.indexOf(course);
          return Container(
            width: 7.0,
            height: 7.0,
            margin: EdgeInsets.symmetric(
              horizontal: 6.0,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index ? Colors.blue : Colors.grey,
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320.0,
          width: double.infinity,
          child: PageView.builder(
            controller: PageController(
              initialPage: 0,
              viewportFraction: 0.70,
            ),
            itemCount: recentCourses.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseScreen(
                        course: recentCourses[index],
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Opacity(
                  opacity: currentPage == index ? 1.0 : 0.5,
                  child: RecentCourseCard(
                    course: recentCourses[index],
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(
                () {
                  currentPage = index;
                },
              );
            },
          ),
        ),
        updateIndicator(),
      ],
    );
  }
}
