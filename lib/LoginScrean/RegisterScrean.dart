import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';
import 'package:project1/FunctionAuthProvider.dart';
import 'package:project1/LoginScrean/LoginScrean.dart';
import 'package:project1/PageScrean/CountrolScrean.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../CustomWidget/tools/CustomIcon.dart';
import '../CustomWidget/tools/CustomText.dart';
import '../CustomWidget/StaticVar.dart';
import '../CustomWidget/tools/CustomTextField.dart';

class RegisterScrean extends StatelessWidget {
  RegisterScrean({Key? key}) : super(key: key);
  final _provid = StaticVar.provider;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 70),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  "Register New account",
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 420,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                    "FULL NAME",
                    CustomIcon(
                      Icons.person_outline,
                    ),
                    TextInputType.text,
                    controller: userNameController,
                  ),
                  CustomTextField(
                    "Email",
                    CustomIcon(
                      Icons.mail_outline,
                    ),
                    TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  CustomTextField(
                    "PHONE",
                    CustomIcon(
                      Icons.phone_iphone_outlined,
                    ),
                    TextInputType.phone,
                    controller: phoneController,
                  ),
                  CustomTextField(
                    "Password",
                    IconButton(
                      onPressed: () {
                        _provid(context, listen: false).changeObscure();
                      },
                      icon: CustomIcon(_provid(context).obscure
                          ? Icons.lock_outline
                          : Icons.lock_open),
                    ),
                    TextInputType.visiblePassword,
                    obscureText: _provid(context).obscure,
                    controller: passwordController,
                  ),
                  CustomTextButton(
                    () async {
                      String email = emailController.text;
                      String password = passwordController.text;
                      String userName = userNameController.text;
                      String phone = phoneController.text;

                      if (email.isNotEmpty &&
                          password.isNotEmpty &&
                          userName.isNotEmpty &&
                          phone.isNotEmpty) {
                        final credential =
                            await Provider.of<FunctionAuthProvider>(context,
                                    listen: false)
                                .createUserWithEmailAndPassword(
                                    email, password, userName, phone);
                        if (credential != null) {
                          StaticVar.provider(context, listen: false)
                              .setCredential(credential.user);
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool("login", true);
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => CountrolScren(),
                            ),
                          );
                        }
                      }
                    },
                    "Register",
                    Colors.black,
                    buttonStyle: StaticVar.buttonStyleAmber,
                  ),
                  CustomTextButton.chiled(() async {
                    final credential = await Provider.of<FunctionAuthProvider>(
                            context,
                            listen: false)
                        .signInWithFacebook();
                    if (credential != null) {
                      StaticVar.provider(context, listen: false)
                          .setCredential(credential.user);
                      final user = credential.user;

                      final data = {
                        "email": user?.email,
                        "userName": user?.displayName,
                        "phone": user?.phoneNumber,
                        "photoURL": user?.photoURL ?? "No Data"
                      };

                      FirebaseFirestore.instance
                          .collection("Users")
                          .doc(credential.user?.uid)
                          .set(data);

                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool("login", true);

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => CountrolScren(),
                      ));
                    }
                  },
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIcon(Icons.facebook_outlined),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomText("Sign up with Facebook"),
                          ]),
                      buttonStyle: StaticVar.buttonStyleWhite),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText("Alerady have an account? "),
                      GestureDetector(
                        child: CustomText(
                          "Login",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          _provid(context, listen: false).restartObscure();
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginScrean(),
                          ));
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
