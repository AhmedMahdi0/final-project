import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';
import 'package:project1/LoginScrean/LoginScrean.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomButtonSheet extends StatelessWidget {
  final _black = Colors.black;
  final _white = Colors.white;
  final _controller;
  ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
    foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
    fixedSize: MaterialStateProperty.all<Size?>(const Size(200, 50)),
  );

  CustomButtonSheet(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaticVar.provider(context).isLasst
        ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomTextButton(() async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool("showHome", true);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScrean(),
                ),
              );
            }, "get Start", _white, buttonStyle: buttonStyle),
          ])
        : Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(() {
                  _controller.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }, "SKIP", _white),
                CustomTextButton(() {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }, "Next", _black),
              ],
            ),
          );
  }
}
