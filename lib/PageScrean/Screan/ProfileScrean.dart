import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/partsWidget/CustomListeTile.dart';
import 'package:project1/CustomWidget/tools/CustomText.dart';
import 'package:project1/FunctionAuthProvider.dart';
import 'package:project1/FunctionFireStoreProvider.dart';
import 'package:project1/LoginScrean/LoginScrean.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScrean extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Provider.of<FunctionFireStoreProvider>(context).setUserName(context);
    Provider.of<FunctionFireStoreProvider>(context).setPhotoUrl(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: ListView(
        children: [
          SizedBox(
            height: 70,
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: CustomText(
                Provider.of<FunctionFireStoreProvider>(context).getUserName(),
                style: const TextStyle(fontSize: 25),
              ),
              leading: Provider.of<FunctionFireStoreProvider>(context)
                          .getPhotoUrl() ==
                      null
                  ? Image.asset("assets/Image/profile.png")
                  : Image.network(
                      Provider.of<FunctionFireStoreProvider>(context)
                          .getPhotoUrl()),
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
          CustomListTile("LogOut", Icons.security, () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("login", false);
            Provider.of<FunctionAuthProvider>(context, listen: false).signOut();
            StaticVar.provider(context, listen: false).setCredential(null);
            StaticVar.provider(context, listen: false).changeIndex(0);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScrean(),
              ),
            );
            StaticVar.provider(context, listen: false).index = 0;
          }),
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
