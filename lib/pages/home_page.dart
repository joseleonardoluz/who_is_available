import 'package:flutter/material.dart';
import 'package:who_is_available/widgets/diver_custom.dart';
import 'package:who_is_available/widgets/main_background.dart';

class HomePage extends StatelessWidget {

  final String name;
  final String lastName;
  final String imgUrl;
  final String numberCel;

  const HomePage({
    Key key, 
    this.name  = 'Omar', 
    this.lastName  = 'Paez', 
    this.imgUrl, 
    this.numberCel
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                margin: EdgeInsets.only(left: 15, bottom: 10),
                child: Column(                  
                  children: <Widget>[
                    Text('Nombre: $name',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1),),),
                    SizedBox(height: 5,),
                    Text('Apellidos: $lastName', 
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1),),)
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
      margin: EdgeInsets.only(top: 40, bottom: 40),
      width: MediaQuery.of(context).size.width,
      height: 125,
      child: CircleAvatar(
        backgroundColor: Colors.green,
      ),
    );
  }
}
