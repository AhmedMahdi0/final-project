import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/partsWidget/CustomSearchSuggertion.dart';
import 'package:project1/CustomWidget/partsWidget/CustomTextFiledSearch.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class SearchScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextFiledSearch(() {}),
              CustomSearchSuggertion(),
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(50),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText("              "),
                Image.asset("assets/Image/Logo/logo2.png"),
              ],
            ),
            // CustomText("\n"),
            CustomText(
              "Huh! You have no food style :(",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomText(
              "Pick from suggestion or you can easly search and create your own.",
              style: const TextStyle(color: Colors.grey),
            )
          ]),
        )
      ],
    );
  }
}
