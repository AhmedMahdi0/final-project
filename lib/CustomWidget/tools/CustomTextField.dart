import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String labelText;
  Widget icon;
  TextInputType textInputType;
  bool? obscureText;
  String? helperText;

  CustomTextField(this.labelText, this.icon, this.textInputType,
      {this.obscureText, this.helperText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.amber.shade500, width: 2),
        ),
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade700),
        suffixIcon: icon,
        helperText: helperText,
      ),
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
    );
  }
}
