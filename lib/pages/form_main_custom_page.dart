import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:who_is_available/widgets/background_main.dart';
import 'package:who_is_available/widgets/custom_buttom.dart';
import 'package:who_is_available/widgets/custom_input.dart';

class FormMainCustomPage extends StatefulWidget {
  final bool isLoginPage;

  const FormMainCustomPage({
    Key? key,
    required this.isLoginPage,
  }) : super(key: key);

  @override
  _FormMainCustomPageState createState() => _FormMainCustomPageState();
}

class _FormMainCustomPageState extends State<FormMainCustomPage> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size sizeCustom = MediaQuery.of(context).size;
    print(sizeCustom.height);
    double? facConvert;
    Widget textLogin;
    String textAction = 'Resgistrarme';

    if (widget.isLoginPage == true) {
      textLogin = Container(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          'Olvidé mi contraseña',
          style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      );
    } else {
      textLogin = Container();
    }

    if (sizeCustom.height > 780 && widget.isLoginPage == false) {
      facConvert = 40;
    } else if (sizeCustom.height > 780 && widget.isLoginPage == true) {
      facConvert = 17;
      textAction = 'Iniciar sesión';
    } else if (sizeCustom.height < 630 && widget.isLoginPage == true) {
      facConvert = 0;
      textAction = 'Iniciar sesión';
    } else if (sizeCustom.height < 750 &&
        sizeCustom.height > 720 &&
        widget.isLoginPage == false) {
      facConvert = 20;
    } else if (sizeCustom.height < 750 &&
        sizeCustom.height > 720 &&
        widget.isLoginPage == true) {
      facConvert = 20;
      textAction = 'Iniciar sesión';
    }

    return SafeArea(
          child: Scaffold(
            body: Stack(children: [
          MainBackgound(),
          Container(
            height: sizeCustom.height,
            width: sizeCustom.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZF5W9E1g8BiLygmv-db5fdp-E9t_cbV2eEg&usqp=CAU'),
                    fit: BoxFit.cover)),
          ),
          _FilterCustom(sizeCustom: sizeCustom),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 15, top: 16, right: sizeCustom.width * 0.88),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: sizeCustom.width * 0.08, top: 10),
                  child: Center(
                    child: SvgPicture.asset('assets/img/logo_mini.svg'),
                  ),
                ),
                CustomButton(
                  style: CustomButtonStyle.primary,
                  onPress: null,
                  text: 'Ingresa con Facebook',
                ),
                Container(
                  height: sizeCustom.height * 0.17,
                  child: Center(
                    child: SvgPicture.asset('assets/img/linea_vertical.svg'),
                  ),
                ),
                Center(
                  child: Container(
                    child: Text(
                      'O crear una cuenta',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                CustomInput(
                  labelText: 'Correo electrónico',
                  isPassword: false,
                  textController: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomInput(
                  labelText: 'Contraseña',
                  isPassword: false,
                  textController: passCtrl,
                ),
                SizedBox(height: facConvert),
                SizedBox(height: 5),
                CustomButton(
                  style: CustomButtonStyle.info,
                  onPress: () {
                    print(passCtrl.text);
                    print(emailCtrl.text);
                    print(MediaQuery.of(context).size.height);
                  },
                  text: textAction,
                ),
                SizedBox(height: facConvert),
                textLogin,
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class MainBackground {
}

class _FilterCustom extends StatelessWidget {
  const _FilterCustom({
    Key? key,
    required this.sizeCustom,
  }) : super(key: key);

  final Size sizeCustom;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          width: sizeCustom.width,
          height: sizeCustom.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(41, 32, 77, 0.5),
            Color.fromRGBO(41, 32, 77, 1)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
      ),
    );
  }
}
