import 'package:flutter/material.dart';
import 'package:product_app/models/product_model.dart';

class ProductDetails extends StatelessWidget {
   ProductDetails({super.key, required this.product});
   
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor:Color.fromARGB(255, 191, 179, 211) ,
        appBar: AppBar(title: Text("Product Details")),
    
        body: Container(
         margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Hero( tag :product.name!, 
                child: Image.network(product.image!,fit: BoxFit.cover,)),
              SizedBox(height: MediaQuery.sizeOf(context).height *.04,),
              Text(product.name!,style: TextStyle(fontSize: 25,color: Colors.deepPurple, fontWeight: FontWeight.bold),),
              SizedBox(height: MediaQuery.sizeOf(context).height *.01,),
              Text(product.category!,style: TextStyle(fontSize: 20,color: Colors.deepPurple ),),
              SizedBox(height: MediaQuery.sizeOf(context).height *.01,),
              Text(product.price!.toString(),style: TextStyle(fontSize: 20,color: Colors.deepPurple) ),
             
    
            ],
        
          ),
        ),
    
      ),
    );
  }
}