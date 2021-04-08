import 'package:flutter/material.dart';

class DividerCustom{

  static Container dividerCustom = Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(255, 255, 255, 1),
          spreadRadius: 0.3,
          blurRadius: 0.5,
          offset: Offset(0, 1)
        )
      ],
         border: Border(
           top: BorderSide(
             width: 0.5,
             color: Color.fromRGBO(0, 0, 0, 1),                      
          )
        )
      ),      
    );
}