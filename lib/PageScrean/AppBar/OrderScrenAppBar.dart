import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIconButton.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/CustomWidget/StaticVar.dart';

class OrderScrenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      title: CustomText("Your order"),
      centerTitle: true,
      leading: CustomIconButton(
        () {},
        Icons.arrow_back,
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
    );
  }

  @override
  Size get preferredSize => StaticVar.AppBarSize;
}
