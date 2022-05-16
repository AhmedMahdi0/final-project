import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class CustomTextButton extends StatelessWidget {
  Function() fun;
  String? text;
  Color? color;
  ButtonStyle? buttonStyle;
  Widget? chiled;

  CustomTextButton(this.fun, this.text, this.color, {this.buttonStyle});

  CustomTextButton.chiled(this.fun, this.chiled, {this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonStyle,
      onPressed: fun,
      child: text != null
          ? CustomText(
              text!,
              style: TextStyle(
                color: color,
                fontSize: 16,
              ),
            )
          : chiled!,
    );
  }
}
