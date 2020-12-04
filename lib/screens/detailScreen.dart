import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel model;
  DetailScreen(this.model) : super();

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cookies from Elton"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Image.network(widget.model.imgUrl),
          
          Text(widget.model.title),
          Text(widget.model.subtitle),
          Text(widget.model.info),
          Text("Энергетическая ценность на 100 г"),

          Table(
           border: TableBorder.all(color: Colors.black),
           children: [
             TableRow(children: [
               Text('Белки'),
               Text('Жиры'),
               Text('Углеводы'),
               Text('Калории'),
             ]),
             TableRow(children: [
               Text(widget.model.calories),
               Text(widget.model.calories),
               Text(widget.model.calories),
               Text(widget.model.calories),
             ])
           ],
         ),          
        ],
      ),
    );
  }
}