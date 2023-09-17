import 'package:flutter/material.dart';
import 'package:product_app/screens/main_screen.dart';
import 'package:product_app/screens/products_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

  debugShowCheckedModeBanner: false,
  home: MainScreen(),

  theme: ThemeData(
    primarySwatch: Colors.deepPurple,
  ),

    );
  }
}