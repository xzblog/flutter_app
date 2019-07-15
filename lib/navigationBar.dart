import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/category.dart';
import './pages/cart.dart';
import './pages/my.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _index = 0;
  final List<Widget> pages = [
    Home(),
    Category(),
    Cart(),
    My()
  ];
  void onChangeNavigation(int index) {
   setState(() {
     _index = index;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('购物车')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的')
          )
        ],
        onTap: onChangeNavigation,
      ),
    );
  }
}