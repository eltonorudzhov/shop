import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/pages/data.dart';

class Product extends StatefulWidget {
  final ProductModel model;

  Product({Key key, this.model}) : super(key: key);

  @override
  _ProductState createState() => _ProductState(model);
}

class _ProductState extends State<Product> {
  final ProductModel model;

  _ProductState(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(model.title)
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                        model.imgUrl,
                        fit: BoxFit.cover,)
                    ),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                                model.title, 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
                            ),
                            Text(
                                model.price.toString() + " ₽", 
                                style: TextStyle(fontSize: 18), 
                            ),
                            Text(model.subtitle + "\n"),
                            //Text(model.info),
                            Text("Энергетическая ценность на 100 гр:"),
                            Table(
                                border: TableBorder.all(color: Colors.brown),
                                children: [
                                    TableRow(children: [
                                        Text('Белки'),
                                        Text('Жиры'),
                                        Text('Углеводы'),
                                        Text('Калории'),
                                    ]),
                                    TableRow(children: [
                                        Text(model.protein),
                                        Text(model.fats),
                                        Text(model.carbohydrates),
                                        Text(model.calories),
                                    ])
                                ],
                            ),
                        ],
                    ),                    
                ),
                Center(
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.brown)),
                        color: Colors.white,
                        textColor: Colors.brown,
                        padding: EdgeInsets.only(top: 15, bottom:15, left:30, right:30),
                        onPressed: () {
                            setState(() {
                                DataDumper.addCart(model);
                            });
                        }, 
                        child: Text(
                            "Купить",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ) 
                    ),
                ),                
            ],
        ),  
    );
  }
}