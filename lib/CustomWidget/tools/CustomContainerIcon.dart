import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class CustomContainerIcon extends StatelessWidget {
  IconData? icon;
  String text;
  double? size;
  String scande;
  Widget? customIcon;

  CustomContainerIcon(this.icon, this.text,
      {this.size, this.scande = "", this.customIcon});

  CustomContainerIcon.Custom(this.customIcon, this.text,
      {this.size, this.scande = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber.shade100,
            ),
            width: size ?? 35,
            height: size ?? 35,
            child: customIcon ??
                CustomIcon(
                  icon!,
                  color: Colors.black,
                  size: 25,
                ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                CustomText(
                  scande,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
