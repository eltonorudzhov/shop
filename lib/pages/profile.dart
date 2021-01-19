import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Профиль"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(                
                children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom:30, left:10, right:10),
                        child: Column(
                            children: [
                                CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        'https://farm2.static.flickr.com/1392/1277199079_ed7ffb37d0_b.jpg'),
                                ),
                            ],
                            
                        ),
                    ),
                    
                    Table(
                        border: TableBorder.all(color: Colors.brown),
                        children: [
                            TableRow(children: [
                            Text(' Имя', style: TextStyle(fontSize: 16),),
                            Text(' Юзер', style: TextStyle(fontSize: 16),),               
                            ]),
                            TableRow(children: [
                            Text(" Фамилия", style: TextStyle(fontSize: 16),),
                            Text(" Пользовательский", style: TextStyle(fontSize: 16),),
                            ])
                        ],
                    ),
                    Table(
                        border: TableBorder.all(color: Colors.brown),
                        children: [
                            TableRow(children: [
                            Text(' Город', style: TextStyle(fontSize: 16),),
                            Text(" Ярославль", style: TextStyle(fontSize: 16),),               
                            ]),
                            TableRow(children: [
                            Text(' Дата Рождения', style: TextStyle(fontSize: 16),),
                            Text(" 12.12.1990", style: TextStyle(fontSize: 16),),
                            ])
                        ],
                    ),
                    Table(
                        border: TableBorder.all(color: Colors.brown),
                        children: [
                            TableRow(children: [
                            Text(' Телефон', style: TextStyle(fontSize: 16),),
                            Text(" 8 (800) 555-35-35", style: TextStyle(fontSize: 16),),               
                            ]),
                            TableRow(children: [
                            Text(' е-мейл', style: TextStyle(fontSize: 16),),
                            Text(" test@mail.ru", style: TextStyle(fontSize: 16),),
                            ])
                        ],
                    ),
                ],
            ),
                
        ),
        
    );
  }
}