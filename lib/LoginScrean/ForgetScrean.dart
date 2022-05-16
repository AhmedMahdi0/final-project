import 'package:flutter/material.dart';
import 'package:project1/CustomWidget/tools/CustomTextButton.dart';
import '../CustomWidget/tools/CustomText.dart';
import '../CustomWidget/tools/CustomTextField.dart';
import '../CustomWidget/StaticVar.dart';
import 'LoginScrean.dart';

class ForgetScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 70),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                "Forgot\nPassword?",
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          SizedBox(
            height: 410,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 190,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextField(
                          "Email",
                          Icon(
                            Icons.mail_outline,
                            color: Colors.grey.shade700,
                          ),
                          TextInputType.emailAddress,
                          helperText:
                              "Please provide your email to reset your password, please don’t share any data to other people.",
                        ),
                        CustomTextButton(
                          () {},
                          "Reset Password",
                          Colors.black,
                          buttonStyle: StaticVar.buttonStyleAmber,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText("Remember now? "),
                              GestureDetector(
                                  child: const Text(
                                    "Login here",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => LoginScrean(),
                                    ));
                                  })
                            ])
                      ]),
                ),
                GestureDetector(
                    child: CustomText(
                      "Need help?",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {})
              ],
            ),
          )
        ]),
      ),
    );
  }
}
