import 'package:etbaany/Screenas/Home_page/Home_page.dart';
// import 'package:etbaany/Screenas/Nav_bar.dart/Navigation_bar.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage()
    ); 
  }
}