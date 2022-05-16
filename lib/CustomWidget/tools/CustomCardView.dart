import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class CustomCardView extends StatelessWidget {
  String img;
  String label;
  String scaned;

  CustomCardView(this.img, this.label, this.scaned);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      width: 240,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 240,
            height: 130,
            child: Image.asset(img),
          ),
          CustomText(label, style: TextStyle(fontSize: 18)),
          CustomText(
            scaned,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.timer), Text("10")],
                ),
                Row(
                  children: [Icon(Icons.star), Text("4")],
                ),
                Row(
                  children: [Icon(Icons.directions_car), Text("Free")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
