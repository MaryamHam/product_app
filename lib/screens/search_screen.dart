import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 209, 191, 240),
        appBar: AppBar(title: Text("Search Screen"),),

        body:Column(
          children: [
            Container(
            margin: EdgeInsets.all(30),
            child: Text("Search" , style: TextStyle(fontSize: 40 ,color: Colors.deepPurple,fontWeight: FontWeight.bold))
            ),

            Container(
              margin: EdgeInsets.all(20),
              child:  TextFormField(
        validator: (value){
     
        },
        
      style: TextStyle(color: Colors.deepPurple),
      decoration: InputDecoration(
      filled: true,
      fillColor:Color.fromARGB(61, 255, 255, 255),
      hintText: "search for product",
      prefixIcon: Icon(Icons.search, color: Colors.purple),            
      hintStyle: TextStyle(
      color: Colors.purple,
      ),
    
          focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
            
          ), 
      
          ), ),
            )
          ],
        ),
  

    );
  }
}