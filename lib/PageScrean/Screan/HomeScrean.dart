import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/partsWidget/CustomSearchBar.dart';
import 'package:project1/CustomWidget/partsWidget/CustomTapBarFoodView.dart';
import 'package:project1/CustomWidget/tools/CustomDescountCard.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class HomeScrean extends StatefulWidget {
  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomText("Good morning Ahmed,",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400)),
                ],
              ),
              Row(
                children: [
                  CustomText(
                    "Happy Freeyay!",
                    style: const TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CustomSearchBar(),
            ],
          ),
        ),
        CustomTapBarFoodView(),
        Container(
          padding: const EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 6.5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    "Big discount resto ",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  CustomText(
                    "(nearby)",
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomDescountCard(),
                    CustomDescountCard(),
                    CustomDescountCard(),
                    CustomDescountCard()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
