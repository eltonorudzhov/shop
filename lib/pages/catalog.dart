import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_shop/pages/product.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/pages/data.dart';

class Catalog extends StatefulWidget {
  Catalog({Key key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<ProductModel> _products = List<ProductModel>();

  @override
  void initState() {
    _products = DataDumper.getProducts();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Каталог"),
        ),
        body: ListView.builder(
            itemCount: _products.length,
            itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: ListTile(
                        leading: Container(
                            width: 36,
                            height: 36,                            
                            child: Image.network(
                                _products.elementAt(index).imgUrl,
                                fit: BoxFit.cover,
                            ),
                        ),
                        title: Text(_products.elementAt(index).title),
                        subtitle: Text(_products.elementAt(index).subtitle),
                        trailing: IconButton(
                            icon: Icon(Icons.add_shopping_cart),
                            onPressed: () {
                                setState(() {
                                    DataDumper.addCart(_products.elementAt(index));
                                });                                
                            },
                            ),
                        onTap: () {
                            Navigator.push(
                                context, 
                                CupertinoPageRoute(builder: (_) => 
                                Product(model: _products.elementAt(index))));
                        },
                    ),
                    
                );
            },
        ),
    );
  }
}