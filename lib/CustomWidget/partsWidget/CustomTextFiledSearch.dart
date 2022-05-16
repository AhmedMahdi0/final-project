import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';

class CustomTextFiledSearch extends StatelessWidget {
  Function() fun;

  CustomTextFiledSearch(this.fun);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade300,
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0),
              borderRadius: BorderRadius.circular(10)),
          labelText: "Search food",
          labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade700),
          prefixIcon: CustomTextButton.chiled(
            fun,
            CustomIcon(
              Icons.search,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
