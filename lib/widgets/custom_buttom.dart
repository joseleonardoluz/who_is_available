import 'package:flutter/material.dart';

enum CustomButtonStyle { primary, info }

// Este widget corresponde a MW8
// 1. string -> texto
// 2. string -> nombre de icono
// 3. string -> estilo de boton
// 4. string -> url destino

class CustomButton extends StatelessWidget {
  CustomButton({
    key,
    required this.style,
    required this.onPress,
    this.active: true,
    this.medium: false,
    this.text,
    this.icon,
  }) : super(key: key);

  final CustomButtonStyle style;
  final bool medium;
  final bool active;
  final String? text;
  final IconData? icon;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: _BtnFull(
        style: style,
        textButton: text,
        iconButton: icon,
        medium: medium,
      ),
    );
  }
}

class _BtnFull extends StatelessWidget {
  _BtnFull({
    required this.style,
    required this.iconButton,
    required this.textButton,
    required this.medium,
  });

  final CustomButtonStyle style;
  final IconData? iconButton;
  final String? textButton;
  final bool medium;

  @override
  Widget build(BuildContext context) {
    var contentButton;
    var button;
    var textColor;
    var bgcolor;

    if (style == CustomButtonStyle.primary) {
      textColor = Colors.white;
      bgcolor = Color.fromRGBO(66, 103, 178, 1);
    } else if (style == CustomButtonStyle.info) {
      textColor = Colors.white;
      bgcolor = Color.fromRGBO(0, 167, 255, 1);
    } // Tiene texto y icono
    if (textButton != null && iconButton != null) {
      contentButton = Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(
              iconButton,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            textButton!,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: textColor,
                fontFamily: 'Poppins'),
          ),
        ],
      );
    } // Tiene solo texto
    else if (textButton != null && iconButton == null) {
      contentButton = Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            textButton!,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Poppins'),
          ),
        ],
      );
    } // Tiene solo icono
    else if (textButton == null && iconButton != null) {
      contentButton = Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Icon(
              iconButton,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      );
    }
    if (medium) {
      button = Container(
        height: 78,
        margin: EdgeInsets.fromLTRB(55, 0, 55, 0),
        padding: EdgeInsets.fromLTRB(30, 13, 30, 13),
        child: RawMaterialButton(
          fillColor: bgcolor,
          splashColor: Color.fromRGBO(0, 130, 206, 1),
          child: contentButton,
          shape: const StadiumBorder(),
          onPressed: () {},
        ),
      );
    } else {
      if (textButton == null && iconButton != null) {
        button = Center(
          child: Container(
            width: 45,
            height: 45,
            child: RawMaterialButton(
              fillColor: bgcolor,
              splashColor: Color.fromRGBO(0, 130, 206, 1),
              child: contentButton,
              shape: const StadiumBorder(),
              onPressed: () {},
            ),
          ),
        );
      } else {
        button = RawMaterialButton(
          fillColor: bgcolor,
          splashColor: Color.fromRGBO(0, 130, 206, 1),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: contentButton,
          ),
          shape: StadiumBorder(),
          onPressed: () {},
        );
      }
    }

    return button;
  }
}
