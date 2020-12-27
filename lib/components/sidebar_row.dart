import '../constants.dart';
import '../model/sidebar.dart';
import 'package:flutter/material.dart';

class SideBarRow extends StatelessWidget {
  final SidebarItem item;

  SideBarRow({this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42.0,
          height: 42.0,
          padding: EdgeInsets.all(12.0),
          child: item.icon,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            gradient: item.background,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          item.title,
          style: kCalloutLabelStyle,
        ),
      ],
    );
  }
}
