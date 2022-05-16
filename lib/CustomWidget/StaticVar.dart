import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../FunctionProvider.dart';

class StaticVar {
  static const provider = Provider.of<FunctionProvider>;

  static final ButtonStyle buttonStyleAmber = ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size?>(const Size(450, 50)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.amber.shade500),
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black));

  static final ButtonStyle buttonStyleWhite = ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size?>(
        const Size(450, 50),
      ),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: Colors.black, width: 1)));
  static final AppBarSize = AppBar().preferredSize;
}
