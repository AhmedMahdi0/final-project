import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class CustomDescountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: MediaQuery.of(context).size.height,
      width: 210,
      child: Row(
        children: [
          Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber.shade200,
            ),
            child: Column(
              children: [
                Image.asset("assets/Image/Logo/logo1.png"),
                CustomText("カフェ"),
                CustomText("Totsuki"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  "Totsuki",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                CustomText(
                  "Black Friday 50%",
                  style: const TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    CustomIcon(
                      Icons.star,
                      color: Colors.amber,
                      size: 24,
                    ),
                    CustomIcon(
                      Icons.star,
                      color: Colors.amber,
                      size: 24,
                    ),
                    CustomIcon(
                      Icons.star,
                      color: Colors.amber,
                      size: 24,
                    ),
                    CustomIcon(
                      Icons.star,
                      color: Colors.amber,
                      size: 24,
                    ),
                    CustomIcon(
                      Icons.star,
                      color: Colors.grey.shade300,
                      size: 24,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
