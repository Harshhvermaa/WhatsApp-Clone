// ignore: unused_import
import 'package:flutter/material.dart';

import 'Screens/homescreen.dart';
void main(List<String> args) {
  runApp(MyApp());
}
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        
         primaryColor: const Color(0xff075e54), 
        // ignore: deprecated_member_use
        accentColor: const Color(0xff25d366),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home_Screeen(title: "Whatsapp"),
    );
  }
}