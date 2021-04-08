import 'package:flutter/material.dart';
import 'package:who_is_available/pages/form_main_custom_page.dart';
import 'package:who_is_available/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      initialRoute: 'loginPage',
      routes: {
        'homepage'       : (BuildContext context) => HomePage(),
        'loginPage'      : ( _ ) => FormMainCustomPage(isLoginPage: true)
      },
    );
  }
}