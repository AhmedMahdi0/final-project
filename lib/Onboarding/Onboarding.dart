import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/partsWidget/CustomButtonSheet.dart';
import 'OnboardingWidget.dart';

class Onboarding extends StatelessWidget {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          if (index == 2) {
            StaticVar.provider(context, listen: false).changeSet();
          } else {
            StaticVar.provider(context, listen: false).isLasstReturn();
          }
        },
        controller: controller,
        children: [
          OnboardingWidget(
            "Welcome to the Foodes.",
            "assets/Image/onboarding-0.png",
            "assets/Background/bg22.png",
          ),
          OnboardingWidget(
            "We suggest the \nbest food for you.",
            "assets/Image/onboarding-1.png",
            "assets/Background/bg3.png",
          ),
          OnboardingWidget(
            "Ready for looking \ndelicious food?",
            "assets/Image/onboarding-2.png",
            "assets/Background/bg4.png",
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.amber.shade500,
        height: 100,
        child: CustomButtonSheet(controller),
      ),
    );
  }
}
