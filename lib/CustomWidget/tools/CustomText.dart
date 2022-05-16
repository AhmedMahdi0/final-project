import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  TextStyle? style;

  CustomText(this.text, {this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? TextStyle(color: Colors.black),
    );
  }
}
