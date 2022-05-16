import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';

class CustomContainerText extends StatelessWidget {
  double? height;
  String text;

  CustomContainerText(this.text, {this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FittedBox(
      child: SizedBox(
        height: height ?? 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
          ],
        ),
      ),
    );
  }
}
