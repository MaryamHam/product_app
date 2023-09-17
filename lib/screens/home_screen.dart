import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 209, 191, 240),
      appBar: AppBar(title: Text("Home Screen"),),

      body:Container(
        margin: EdgeInsets.all(30),
        child: Text("Home " , style: TextStyle(fontSize: 40 ,color: Colors.deepPurple,fontWeight: FontWeight.bold))),
    );
  }
}