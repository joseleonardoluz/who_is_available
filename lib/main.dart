import 'package:flutter/material.dart';
import 'package:who_is_available/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      initialRoute: 'homepage',
      routes: {
        'homepage'       : (BuildContext context) => HomePage()
      },
    );
  }
}