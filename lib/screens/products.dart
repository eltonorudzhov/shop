import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/screens/detailScreen.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen() : super();
  
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductModel> models = new List<ProductModel>();

  @override
  void initState() {
    models.add(new ProductModel("«Полечки с подсолнечником», сдобное (коробка 2 кг)", "Печенье", "400 ₽", "\nВоздушное и хрустящее печенье из сдобного теста с высоким содержанием ядра подсолнечника.\n\nВ составе печенья: свежее отборное яйцо, ядро подсолнечника, сахар, мука высшего сорта. \n\nНе содержит консервантов.\n\n", "9.5 г", "35 г", "55 г", "540 ккал", "https://api.magonline.ru/thumbnail/370x370/13/406/13406.webp"));
    models.add(new ProductModel("«Мини-эклеры с брусничной начинкой» (коробка 2 кг)", "Печенье", "500 ₽", "\nНежные мини-эклеры из лёгкого заварного теста, произведенного по классической технологии: без добавления дрожжей, на свежем отборном яйце.\n\nВнутри воздушного лакомства – брусничная начинка с кусочками натуральных ягод.\n\nЛёгкие и вкусные мини-эклеры – идеальное дополнение к чайным посиделкам с любимыми и друзьями.\n\n", "5.6 г", "25 г", "58.41 г г", "290 ккал", "https://api.magonline.ru/thumbnail/370x370/14/885/14885.webp"));
    models.add(new ProductModel("«Заварнельки в карамельной глазури» (коробка 2 кг)", "Печенье", "500 ₽", "\nНарядное воздушное печенье из лёгкого заварного теста. Заварнельки производят по классической технологии – из теста без добавления дрожжей, на свежем отборном яйце.\n\nПеченье покрыто вкуснейшей карамельной глазурью.\n\nЛёгкие и вкусные Заварнельки – идеальное дополнение к чайным посиделкам с любимыми и друзьями.\n\n", "5.8 г", "25 г", "53 г", "340 ккал", "https://api.magonline.ru/thumbnail/370x370/14/884/14884.webp"));
    models.add(new ProductModel("Печенье–сэндвич с шоколадно-ореховым вкусом (коробка 4 кг)", "Печенье", "750 ₽", "\nРассыпчатое сахарное печенье с добавлением какао.\n\nПеченье с нежной шоколадно-ореховой прослойкой.\n\n", "7 г", "24 г", "63 г", "440 ккал", "https://api.magonline.ru/thumbnail/370x370/00/919/919.webp"));
    models.add(new ProductModel("«Заварики» со злаками (коробка 1,5 кг)", "Печенье", "375 ₽", "\nВоздушное, хрустящее, несладкое печенье из заварного теста с большим содержанием злаковых семян.\n\nЗаварики производят по классической технологии: заварное тесто без дрожжей, чистейшая артезианская вода.\n\nВ составе печенья: свежее отборное яйцо, семена льна и подсолнечника, сахар, мука высшего сорта.\n\nНе содержит консервантов.\n\n", "10 г", "25 г", "47 г", "532 ккал", "https://api.magonline.ru/thumbnail/370x370/13/406/13406.webp"));
    models.add(new ProductModel("«Земляника со сливками», сахарное (коробка 5 кг)", "Печенье", "666 ₽", "\nКлассическое сахарное печенье.\n\nРассыпчатое печенье с нежным вкусом земляники со сливками.\n\nНе содержит консервантов.\n\n", "7 г", "19 г", "67 г г", "460 ккал", "https://api.magonline.ru/thumbnail/370x370/00/565/565.webp"));
    models.add(new ProductModel("Вафли с воздушной кукурузой (коробка 1,5 кг)", "Вафли", "450 ₽", "\nХрустящая вафля с нежной сливочной начинкой, вафля в мягкой карамели и воздушными кукурузными шариками.\n\nВафельный батончик покрыт молочно-шоколадной глазурью.\n\n", "6 г", "21 г", "65 г", "470 ккал", "https://api.magonline.ru/thumbnail/370x370/00/739/739.webp"));
    models.add(new ProductModel("Вафельный сэндвич с шоколадной начинкой (коробка 3,78 кг)", "Вафли", "825 ₽", "\nХрустящие вафли с щедрой прослойкой воздушной шоколадной глазури.\n\n", "5.6 г", "27 г", "59 г", "510 ккал", "https://api.magonline.ru/thumbnail/370x370/00/698/698.webp"));
    models.add(new ProductModel("Вафли «Южная страна» (коробка 5 кг)", "Вафли", "975 ₽", "\nСемислойные вафли с шоколадной начинкой.\n\n", "5.7 г", "27 г", "61 г", "510 ккал", "https://api.magonline.ru/thumbnail/370x370/00/545/545.webp"));
    models.add(new ProductModel("Трубочки вафельные «Лесной орех» (коробка 4 кг)", "Трубочки", "820 ₽", "\nХрустящие вафельные трубочки с шоколадно-ореховой начинкой.\n\n", "5.6 г", "24 г", "65 г", "480 ккал", "https://api.magonline.ru/thumbnail/370x370/02/155/2155.webp"));
    models.add(new ProductModel("Трубочки вафельные с шоколадно-ореховым вкусом (коробка 2 кг)", "Трубочки", "525 ₽", "\nВафельные трубочки с нежной кремовой шоколадно-ореховой начинкой.\n\nТрубочки покрыты глазурью.\n\n", "4.5 г", "27 г", "65 г", "520 ккал", "https://api.magonline.ru/thumbnail/370x370/02/503/2503.webp"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (BuildContext context, int index){
            return  ListTile(
                title: Text(models[index].title),
                leading: Icon(Icons.group_work),
                subtitle: Text(models[index].subtitle),
                trailing: Text(models[index].price),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => DetailScreen(models[index])));
                });
          }
      ),
    );
  }
}