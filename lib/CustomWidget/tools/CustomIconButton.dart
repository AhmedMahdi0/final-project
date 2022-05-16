import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';

class CustomIconButton extends StatelessWidget {
  Function() fun;
  Color? color;
  IconData icon;
  BoxBorder? border;
  CustomIconButton(this.fun, this.icon, {this.color, this.border});
  @override
  Widget build(BuildContext context) {
    return CustomTextButton.chiled(
      fun,
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: border,
          color: color ?? Colors.white10,
        ),
        width: 28,
        height: 28,
        child: CustomIcon(icon, color: Colors.black, size: 20),
      ),
    );
  }
}
