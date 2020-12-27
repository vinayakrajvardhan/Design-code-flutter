import 'package:design_ui_code/screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'searchfield_widget.dart';
import 'sidebar_button.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({@required this.triggeredAnimation});

  final Function triggeredAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBarButton(
            triggeredAnimation: triggeredAnimation,
          ),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 15.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage(
                'asset/images/vinayak.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
