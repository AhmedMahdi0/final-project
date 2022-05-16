import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';
import 'package:project1/LoginScrean/LoginScrean.dart';
import '../CustomWidget/tools/CustomIcon.dart';
import '../CustomWidget/tools/CustomText.dart';
import '../CustomWidget/StaticVar.dart';
import '../CustomWidget/tools/CustomTextField.dart';

class RegisterScrean extends StatelessWidget {
  RegisterScrean({Key? key}) : super(key: key);
  final _provid = StaticVar.provider;

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
                      TextInputType.text),
                  CustomTextField(
                      "Email",
                      CustomIcon(
                        Icons.mail_outline,
                      ),
                      TextInputType.emailAddress),
                  CustomTextField(
                      "PHONE",
                      CustomIcon(
                        Icons.phone_iphone_outlined,
                      ),
                      TextInputType.phone),
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
                  ),
                  CustomTextButton(
                    () {},
                    "Register",
                    Colors.black,
                    buttonStyle: StaticVar.buttonStyleAmber,
                  ),
                  CustomTextButton.chiled(
                      () {},
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
