import 'package:design_ui_code/components/sidebar_row.dart';
import 'package:design_ui_code/model/sidebar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SideBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(54.0),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/vinayak.jpg'),
                  radius: 31.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vinayak Raj vardhan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'Dash Board',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SideBarRow(
                item: sidebarItem[0],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SideBarRow(
                item: sidebarItem[1],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SideBarRow(
                item: sidebarItem[2],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SideBarRow(
                item: sidebarItem[3],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    'asset/icons/icon-logout.png',
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Log Out',
                    style: kSecondaryCalloutLabelStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
