import 'package:flutter/material.dart';
import 'package:product_app/models/product_model.dart';
import 'package:product_app/screens/product_details.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key});

  List <ProductModel> products = [
  
  ProductModel(
    name: "shoes",
    category: "Shoes",
    image: "https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_BLK-MATTLIC.BLU.jpg?v=1670326503",
    price: 20.8
    ),

    ProductModel(
    name: "sport shoes",
    category: "Shoes",
    image: "https://contents.mediadecathlon.com/p2393847/4d2cc2c91fbaeec4a0a3a00af395c64a/p2393847.jpg",
    price: 30.5
    ),

    ProductModel(
    name: "men shoes",
    category: "Shoes",
    image: "https://5.imimg.com/data5/MT/MB/EO/SELLER-14290347/men-555-black-fashion-lace-up-shoes-500x500.jpg",
    price: 76.8
    ),

    ProductModel(
    name: "shoes2",
    category: "Shoes",
    image: "https://5.imimg.com/data5/ECOM/Default/2023/5/307403416/ZX/IK/AS/60773986/4880409553-1543528886-250x250.jpg",
    price: 44.6
    ),

    ProductModel(
    name: "shoes3",
    category: "Shoes",
    image: "https://img.freepik.com/free-photo/brown-leather-shoes_1203-7562.jpg",
    price: 59.3
    ),

    ProductModel(
    name: "T-shirt",
    category: "t- shirt",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzUTV0u8or53kL0BLfu3GFGhA3T_Fu-YGX7A&usqp=CAU",
    price: 59.3
    ),

    ProductModel(
    name: "Girl sweater",
    category: "sweater",
    image: "https://rukminim1.flixcart.com/image/850/1000/l4u7vrk0/top/q/m/v/xxl-wmp-singham-original-imagfncuezaypshc.jpeg?q=20",
    price: 59.3
    ),

    ProductModel(
    name: "sweater",
    category: "sweater",
    image: "https://img.freepik.com/free-photo/brown-leather-shoes_1203-7562.jpg",
    price: 59.3
    ),
  ];

 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 191, 240),
      appBar: AppBar(title: Text("Product"),
      
      ),


      body:Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                  ProductDetails(product: products[index],)
                
                
                ));
      
      
              },
              leading: Hero(tag: products[index].name! ,child: Image.network(products[index].image!, width: 50,height: 50,)),
              title: Text(products[index].name!),
              subtitle: Text(products[index].category!),
              trailing:  Text(products[index].price!.toString()),
      
            );
          }
        ),
      ) ,

    );
  }
}