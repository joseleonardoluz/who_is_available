import 'package:flutter/material.dart';

class MainBackgound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightWindow = MediaQuery.of(context).size.height;
    double widthWindow = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        height: heightWindow,
        width: widthWindow,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(41, 32, 77, 1),
          Color.fromRGBO(18, 19, 36, 1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
  }
}
