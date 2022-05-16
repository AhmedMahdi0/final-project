import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  String? Title;
  String? UrlImage;
  String? UrlBackground;

  OnboardingWidget(this.Title, this.UrlImage, this.UrlBackground);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber.shade500,
        image: DecorationImage(
          image: AssetImage(UrlBackground!),
        ),
      ),
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 10),
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Center(
            child: Column(
              children: [
                Text(
                  Title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 25),
                ),
                Image.asset(UrlImage!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
