import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:who_is_available/widgets/background_main.dart';
import 'package:who_is_available/widgets/custom_dividers.dart';
import 'package:who_is_available/widgets/divider_custom.dart';
import 'package:who_is_available/widgets/main_background.dart';

class HomePage extends StatefulWidget {
  final String name;
  final String lastName;
  final String imgUrl;
  final String numberCel;

  const HomePage(
      {Key key,
      this.name = 'Omar',
      this.lastName = 'Paez',
      this.imgUrl,
      this.numberCel})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AnimationController controller;

  Animation<double> rotacion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(41, 32, 77, 1),
        title: Text('¿Quién está disponible? '),
      ),
      body: Stack(children: <Widget>[
        MainBackgound(),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _Avatar(),
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nombre: ${widget.name} ${widget.lastName}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text('Enviar mensaje',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )),
                          ElasticIn(
                           delay: Duration(milliseconds: 1000),
                            child: IconButton(
                              icon: Icon(Icons.mail_outline, color: Colors.white),
                              onPressed: (){

                              },
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Llamar: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          ElasticIn(
                            delay: Duration(milliseconds: 2000),
                            child: IconButton(
                              icon: Icon(Icons.call, color: Colors.white),
                              onPressed: (){

                              },
                            )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              DividerCustom.dividerCustom,
            ],
          ),
        ),
      ]),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 100),
      width: MediaQuery.of(context).size.width,
      height: 135,
      child: CircleAvatar(
        backgroundColor: Colors.green,
      ),
    );
  }
}
