import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';

import '../../CustomWidget/tools/CustomText.dart';

class ProfileScrenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      title: CustomText("Profile"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => StaticVar.AppBarSize;
}
