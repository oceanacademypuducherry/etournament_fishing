import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.hintText,
      required this.labelText,
      this.flag,
      required this.onChange})
      : super(key: key);

  String labelText;
  String hintText;
  bool? flag;
  final onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        obscureText: flag != null && true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
          suffixText: "",
          suffixStyle: const TextStyle(
            color: Colors.red,
          ),
        ),
        onChanged: onChange,
      ),
    );
  }
}
