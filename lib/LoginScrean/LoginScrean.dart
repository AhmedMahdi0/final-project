import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomIcon.dart';
import 'package:project1/CustomWidget/StaticVar.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';
import 'package:project1/LoginScrean/ForgetScrean.dart';
import '../CustomWidget/tools/CustomText.dart';
import '../PageScrean/CountrolScrean.dart';
import 'RegisterScrean.dart';
import '../CustomWidget/tools/CustomTextField.dart';

class LoginScrean extends StatelessWidget {
  LoginScrean({Key? key}) : super(key: key);
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
                  "Login to find the best food",
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 330,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                      "Email",
                      CustomIcon(
                        Icons.mail_outline,
                      ),
                      TextInputType.emailAddress),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: const Text("Forget password?"),
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => ForgetScrean(),
                          ));
                        },
                      ),
                    ],
                  ),
                  CustomTextButton(
                    () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => CountrolScren()));
                    },
                    "Sign in",
                    Colors.black,
                    buttonStyle: StaticVar.buttonStyleAmber,
                  ),
                  CustomTextButton.chiled(() {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => CountrolScren(),
                    ));
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
                      CustomText("Don’t have an account? "),
                      GestureDetector(
                        child: CustomText(
                          "Register",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: ()  {
                           _provid(context, listen: false).restartObscure();
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => RegisterScrean(),
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
