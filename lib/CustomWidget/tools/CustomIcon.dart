import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData icon;
  Color? color;
  double? size;

  CustomIcon(this.icon, {Key? key, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color ?? Colors.grey.shade500,
      size: size ?? 30,
    );
  }
}
