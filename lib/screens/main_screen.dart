import 'package:flutter/material.dart';
import 'package:product_app/screens/home_screen.dart';
import 'package:product_app/screens/person_screen.dart';
import 'package:product_app/screens/products_screen.dart';
import 'package:product_app/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int index =0;
List <Widget> screens = [
  HomeScreen(),
  SearchScreen(),
  PersonInfoScreen(),
  ProductScreen()
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: screens[index],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: (value){
      index = value;
      setState(() {
        
      });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Person" ),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book),label:"Produc" ),



      ]),



    );
  }
}