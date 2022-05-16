import 'package:flutter/cupertino.dart';

class FunctionProvider extends ChangeNotifier {
  bool isLasst = false;
  bool obscure = true;
  int index = 0;
  bool switchValue = true;

  changeSwitchValue(bool value) {
    switchValue = value;
    notifyListeners();
  }

  restartObscure() {
    obscure = true;
    notifyListeners();
  }

  changeIndex(index) {
    this.index = index;
    notifyListeners();
  }

  changeObscure() {
    obscure = !obscure;
    notifyListeners();
  }

  changeSet() {
    isLasst = true;
    notifyListeners();
  }

  isLasstReturn() {
    isLasst = false;
    notifyListeners();
  }
}
