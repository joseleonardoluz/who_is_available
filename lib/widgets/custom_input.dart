import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;
  final TextInputType? keyboardType;
  final bool isPassword;

  const CustomInput({
    Key? key,
    required this.labelText,
    required this.textController,
    this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 9),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))),
        child: TextField(
          controller: this.textController,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 14),
          keyboardType: this.keyboardType,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              labelText: this.labelText,
              labelStyle: TextStyle(color: Colors.white)),
        ));
  }
}
