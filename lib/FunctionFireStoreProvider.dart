import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/CustomWidget/StaticVar.dart';

class FunctionFireStoreProvider extends ChangeNotifier {
  late String user = "No Data";
  late String? photoURL;

  _firestorUserName(context) {
    try {
      final firestore = FirebaseFirestore.instance;
      final credential =
          StaticVar.provider(context, listen: false).getCredential();
      firestore
          .collection("Users")
          .doc(credential?.uid)
          .get()
          .then((value) async {
        try {
          user = value.data()?["userName"];
        } catch (e) {}
      });
    } catch (e) {
      user = "No data";
    }
  }

  _fireStorePhotoUrl(context) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final credential =
          StaticVar.provider(context, listen: false).getCredential();
      firestore.collection("Users").doc(credential?.uid).get().then((value) {
        try {
          photoURL = value.data()?["photoURL"];
        } catch (e) {}
      });
    } catch (e) {}
  }

  setPhotoUrl(context) async {
    await _fireStorePhotoUrl(context);
    notifyListeners();
  }

  getPhotoUrl() {
    return photoURL;
  }

  setUserName(context) async {
    await _firestorUserName(context);
    notifyListeners();
  }

  getUserName() {
    return user;
  }
}
