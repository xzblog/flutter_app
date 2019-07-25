import 'package:flutter/material.dart';
/*
 * 凸起的底部导航
 */

class RaisedBottomNavigationBar extends StatelessWidget {
  const RaisedBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){print('点击了添加按钮');},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.home),
            ),
            Container(
              height: 56,
              width: 80,
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.home),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
        
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('首页')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('发布')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('设置')
      //     ),
      //   ],
      // ),
    );
  }
}