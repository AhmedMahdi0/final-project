import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/tools/CustomContainerIcon.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class CustomListTile extends StatelessWidget {
  String text;
  IconData icon;
  bool setButton;
  double? width;
  Function() fun;

  CustomListTile(this.text, this.icon, this.fun,
      {this.setButton = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: GestureDetector(
        onTap: fun,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(onTap: fun, child: CustomContainerIcon(icon, "")),
                CustomText(text,style: const TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: setButton
                  ? CupertinoSwitch(
                      dragStartBehavior: DragStartBehavior.start,
                      value: StaticVar.provider(context).switchValue,
                      activeColor: Colors.amber,
                      trackColor: Colors.grey.shade300,
                      onChanged: (value) {
                        StaticVar.provider(context, listen: false)
                            .changeSwitchValue(value);
                      },
                    )
                  : CustomIcon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 24,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
