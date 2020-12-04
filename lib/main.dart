import 'package:flutter/material.dart';
import 'package:online_shop/screens/products.dart';
import 'package:online_shop/screens/userProfile.dart';
import 'package:online_shop/screens/productsCart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookies from Elton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageNavigationBar(),
    );
  }
}

class PageNavigationBar extends StatefulWidget {
  final List<Page> _pages = [
    Page('Каталог', Icons.view_list, ProductsScreen()),
    Page('Профиль', Icons.account_box, ProfileScreen()),
    Page('Корзина', Icons.add_shopping_cart, ProductsCart()),
  ];


  PageNavigationBar({Key key}) : super(key: key);

  @override
  _PageNavigationBarState createState() => _PageNavigationBarState();
}

class _PageNavigationBarState extends State<PageNavigationBar> {
  int _currentPageIndex = 0;

  void _openPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerItemWidgets = widget._pages
        .asMap()
        .map((int index, Page page) =>
        MapEntry<int, Widget>(index,
            ListTile(
              title: Text(page.title),
              leading: Icon(page.iconData),
              selected: _currentPageIndex == index,
              onTap: () {
                _openPage(index);
                Navigator.pop(context);
              },
            )
        )
    ).values.toList();
    drawerItemWidgets.insert(0, DrawerHeader(
      child:Text('Cookies from Elton\n'),
    ),);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cookies from Elton"),
        backgroundColor: Colors.brown,
      
      ),
      body: Center(
        child: (widget._pages[_currentPageIndex].pageBody),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: drawerItemWidgets,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        items: widget._pages.map((Page page) =>
            BottomNavigationBarItem(
              icon: Icon(page.iconData),
              title: Text(page.title),
            )).toList(),
        onTap: _openPage,
      ),);
  }
}

class Page {
  final String title;
  final IconData iconData;
  final Widget pageBody;
  Page(this.title, this.iconData, this.pageBody);
}

