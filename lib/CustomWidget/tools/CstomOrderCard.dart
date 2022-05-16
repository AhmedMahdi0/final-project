import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';

class CstomOrderCard extends StatelessWidget {
  String img;
  String first;
  String countFirst;
  String storeName;
  String prise;
  String? second;
  String? countSecond;

  CstomOrderCard(
      this.img, this.first, this.countFirst, this.storeName, this.prise,
      {this.second, this.countSecond});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(img),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              countFirst + " x " + first,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (second != null &&countSecond !=null)
                              CustomText(
                                countSecond! + " x " + second!,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(storeName,
                                style:
                                    const TextStyle(fontWeight: FontWeight.bold)),
                            CustomText("\$" + prise),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              CustomTextButton.chiled(
                  () {},
                  CustomIcon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
