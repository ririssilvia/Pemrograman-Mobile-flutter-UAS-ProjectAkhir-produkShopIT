import 'package:flutter/material.dart';
import 'package:tokoit_uas/Auth/intro/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor:Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
     home: WelcomeScreen(),
      
    );
  }
}