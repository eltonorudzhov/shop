import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen() : super();
  
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage('https://farm2.static.flickr.com/1392/1277199079_ed7ffb37d0_b.jpg')
          ),
          //Image.network("https://farm2.static.flickr.com/1392/1277199079_ed7ffb37d0_b.jpg"),
          Text("\nУчетная запись\n"),

          Table(
           border: TableBorder.all(color: Colors.black),
           children: [
             TableRow(children: [
               Text('Имя'),
               Text('Юзер'),               
             ]),
             TableRow(children: [
               Text("Фамилия"),
               Text("Пользовательский"),
             ])
           ],
         ),

         Table(
           border: TableBorder.all(color: Colors.black),
           children: [
             TableRow(children: [
               Text('Город'),
               Text("Ярославль"),               
             ]),
             TableRow(children: [
               Text('Дата Рождения'),
               Text("12.12.1990"),
             ])
           ],
         ),

         Table(
           border: TableBorder.all(color: Colors.black),
           children: [
             TableRow(children: [
               Text('Телефон'),
               Text("88005553535"),               
             ]),
             TableRow(children: [
               Text('е-мейл'),
               Text("test@mail.ru"),
             ])
           ],
         ),      
        ],
      ),
     
    );
  }
}