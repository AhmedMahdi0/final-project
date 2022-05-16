import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/CustomWidget/tools/CustomIconButton.dart';
import 'package:project1/CustomWidget/StaticVar.dart';

class SearchScrenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      title: CustomText("Food Style"),
      centerTitle: true,
      actions: [
        CustomIconButton(
          () {},
          Icons.add,
          color: Colors.amber.shade400,
        )
      ],
    );
  }

  @override
  Size get preferredSize => StaticVar.AppBarSize;
}
