import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/partsWidget/CustomTabBarViewWidget.dart';
import 'package:project1/CustomWidget/tools/CustomCardView.dart';
import 'package:project1/CustomWidget/tools/CustomContainerText.dart';

class CustomTapBarFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              isScrollable: true,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              indicatorColor: Colors.white10,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              tabs: [
                CustomContainerText("Breakfast"),
                CustomContainerText("Lunch"),
                CustomContainerText("Dinner"),
                CustomContainerText("Snack"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: TabBarView(
              children: [
                CustomTabBarViewWidget(
                  [
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                  ],
                ),
                CustomTabBarViewWidget(
                  [
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                  ],
                ),
                CustomTabBarViewWidget(
                  [
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                  ],
                ),
                CustomTabBarViewWidget(
                  [
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodFresh.png",
                      "Fresh Tamagoyaki",
                      "A delicious egg food from Japan.",
                    ),
                    CustomCardView(
                      "assets/Image/Food/foodOkonomiyaki.png",
                      "Okonomiyaki",
                      "‘Unagi’ is the Japanese w",
                    ),
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
