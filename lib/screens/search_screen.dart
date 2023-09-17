import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 209, 191, 240),
        appBar: AppBar(title: Text("Search Screen"),),

        body:Container(
        margin: EdgeInsets.all(30),
        child: Text("Search" , style: TextStyle(fontSize: 40 ,color: Colors.deepPurple,fontWeight: FontWeight.bold))),
  

    );
  }
}