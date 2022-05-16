import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/partsWidget/CustomListeTile.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';

class ProfileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: ListView(
        children: [
          SizedBox(
            height: 70,
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: CustomText(
                "Ahmed Mahdi",
                style: const TextStyle(fontSize: 25),
              ),
              leading: Image.asset("assets/Image/profile.png"),
              subtitle: CustomText("Supreme Vegetarian",
                  style: const TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(children: [
              CustomText(
                "Personal Information",
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ]),
          ),
          CustomListTile("Location", Icons.location_on, () {}),
          const Divider(
            color: Colors.grey,
          ),
          CustomListTile("Payment", Icons.monetization_on, () {}),
          const Divider(
            color: Colors.grey,
          ),
          CustomListTile("Information", Icons.info, () {}),
          const Divider(
            color: Colors.grey,
          ),
          CustomListTile("Security", Icons.security, () {}),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(children: [
              CustomText(
                "Notifications",
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ]),
          ),
          CustomListTile(
            "Discount notifications",
            Icons.discount,
            () {
              StaticVar.provider(context, listen: false).changeSwitchValue(
                  !StaticVar.provider(context, listen: false).switchValue);
            },
            setButton: true,
            width: 200,
          ),
        ],
      ),
    );
  }
}
