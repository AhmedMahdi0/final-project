import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/partsWidget/CustomBottomNavigationBar.dart';
import 'package:project1/FunctionFireStoreProvider.dart';
import 'package:project1/PageScrean/AppBar/HomeScrenAppBar.dart';
import 'package:project1/PageScrean/AppBar/OrderScrenAppBar.dart';
import 'package:project1/PageScrean/AppBar/ProfileScrenAppBar.dart';
import 'package:project1/PageScrean/AppBar/SearchScrenAppBar.dart';
import 'package:project1/PageScrean/Screan/HomeScrean.dart';
import 'package:project1/PageScrean/Screan/OrderScrean.dart';
import 'package:project1/PageScrean/Screan/ProfileScrean.dart';
import 'package:project1/PageScrean/Screan/SearchScrean.dart';
import 'package:provider/provider.dart';

class CountrolScren extends StatelessWidget {
  final listBody = [
    HomeScrean(),
    SearchScrean(),
    OrderScrean(),
    ProfileScrean()
  ];
  final dynamic listAppBar = [
    HomeScrenAppBar(),
    SearchScrenAppBar(),
    OrderScrenAppBar(),
    ProfileScrenAppBar()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: listAppBar[StaticVar.provider(context).index],
      body: listBody[StaticVar.provider(context).index],
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
