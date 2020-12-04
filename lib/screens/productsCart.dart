import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsCart extends StatefulWidget {
  ProductsCart() : super();
  
  @override
  _ProductsCartState createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Column(
        children: [
          Image.network("https://indoortv116.ru/netcat_files/5/26/h_2b217241e393a1343c38fcb550cf3b13"),
          Text("Корзина пользователя"),      

        ],
      ),
     
    );
  }
}