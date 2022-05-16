import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/partsWidget/CustomTextFiledSearch.dart';
import 'package:project1/CustomWidget/tools/CustomContainerIcon.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';

class CustomSearchSuggertion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4.5,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomText(
                  "Suggestion for you ",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CustomText(
                  "(nearby)",
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerIcon.Custom(
                  CustomIcon(
                    Icons.food_bank_outlined,
                    color: Colors.black,
                  ),
                  "Vegetarian Foodies",
                  scande: "Added by 200+ people",
                  size: 50,
                ),
                CustomTextButton.chiled(
                    () {},
                    CustomText(
                      "+ Add to order",
                      style: TextStyle(color: Colors.grey.shade600),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerIcon.Custom(
                  CustomIcon(
                    Icons.fastfood_outlined,
                    color: Colors.black,
                  ),
                  "Sweety Lovers",
                  scande: "Addeed by 10 people",
                  size: 50,
                ),
                CustomTextButton.chiled(
                    () {},
                    CustomText(
                      "+ Add to order",
                      style: TextStyle(color: Colors.grey.shade600),
                    ))
              ],
            ),
          ],
        ));
  }
}
