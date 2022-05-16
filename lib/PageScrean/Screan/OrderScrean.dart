import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CstomOrderCard.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';

class OrderScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,top: 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                CustomText(
                  "Ready to checkout",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade300)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 7.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width / 3.9,
                        color: Colors.amber,
                        child: CustomIcon(
                          Icons.fastfood_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            "View all\n",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          CustomText(
                            "\$17.6",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomTextButton.chiled(
                    () {},
                    CustomIcon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 24,
                    ))
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              CustomText(
                "Order on the way",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
         Expanded(
           child: ListView(
             children: [
               CstomOrderCard(
                 "assets/Image/Food/food1.png",
                 "Okonomiyaki",
                 "2",
                 "Totsuki Elite",
                 "16.00",
                 countSecond: "1",
                 second: "Fresh Tamagoyaki",
               ),
               Container(height: 1,color: Colors.grey.shade300,),
               CstomOrderCard(
                 "assets/Image/Food/food2.png",
                 "Karaage Bals",
                 "1",
                 "Shokugeki",
                 "3.66",
               ),
               Container(height: 1,color: Colors.grey.shade300,),
               CstomOrderCard(
                 "assets/Image/Food/food3.png",
                 "Sushite",
                 "1",
                 "Megumi",
                 "2.57",
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
