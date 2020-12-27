import 'package:flutter/material.dart';

import '../constants.dart';

class SideBarButton extends StatelessWidget {
  SideBarButton({@required this.triggeredAnimation});

  final Function triggeredAnimation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:triggeredAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(maxHeight: 40.0, maxWidth: 40.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12),
              blurRadius: 12.0,
            ),
          ],
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          fit: BoxFit.cover,
          color: kPrimaryLabelColor,
        ),
      ),
    );
  }
}