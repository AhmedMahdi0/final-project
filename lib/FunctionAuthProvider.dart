import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FunctionAuthProvider {
  Future<UserCredential?> createUserWithEmailAndPassword(
      email, password, userName, phone) async {
    Map<String, dynamic> data = {
      "userName": userName,
      "email": email,
      "phone": phone,
    };
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final firestore = FirebaseFirestore.instance;
      firestore.collection("Users").doc(credential.user?.uid).set(data);

      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return null;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return null;
      }
    } catch (e) {}
    return null;
  }

  t() {}

  Future<UserCredential?> signInWithEmailAndPassword(email, password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return null;
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return null;
      }
    }
    return null;
  }

  signOut() async {
    await FacebookAuth.instance.logOut();
    await FirebaseAuth.instance.signOut();
  }

  Future<UserCredential?> signInWithFacebook() async {
    AccessToken accessToken;
    final LoginResult loginResult = await FacebookAuth.instance.login();
    if (loginResult.status == LoginStatus.success) {
      accessToken = loginResult.accessToken!;
      final data = await FacebookAuth.instance.getUserData();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);
      return await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
    }
    return null;
  }
}
