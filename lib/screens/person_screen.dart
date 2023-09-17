import 'package:flutter/material.dart';

class PersonInfoScreen extends StatelessWidget {
  const PersonInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 209, 191, 240),
        appBar: AppBar(title: Text("Person Info Screen"),),

        body:Container(
        margin: EdgeInsets.all(30),
        child: Text("Person Info " , style: TextStyle(fontSize: 40 ,color: Colors.deepPurple,fontWeight: FontWeight.bold))),
  

    );
  }
}