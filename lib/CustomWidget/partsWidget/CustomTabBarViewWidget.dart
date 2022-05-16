import 'package:flutter/material.dart';

class CustomTabBarViewWidget extends StatelessWidget {
  List<Widget> childern;

  CustomTabBarViewWidget(this.childern);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              Text(
                "Suggestion for you ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "(Japanese food)",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
        Expanded(
          child:
              ListView(scrollDirection: Axis.horizontal, children: childern),
        ),
      ],
    );
  }
}
