import 'package:flutter/material.dart';
/*
 * 凸起的底部导航
 */

class RaisedBottomNavigationBar extends StatelessWidget {
  const RaisedBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedNavigationBarTwo();
  }
}

/*
 * 仿咸鱼底部导航 
 */
class RaisedNavigationBarOne extends StatelessWidget {
  const RaisedNavigationBarOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 56.0,
        height: 56.0,
        margin: EdgeInsets.only(top: 5.0),
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Color(0xFFF6F6F6), offset: Offset(0.0, -1.0),    
            blurRadius: 0.5, spreadRadius: 0.2), 
            ]
        ),
        child: FloatingActionButton(
          elevation: 0.0,
          onPressed: (){print('点击了添加按钮');},
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_in_page),
            title: Text('发现')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('发布')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('消息')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的')
          ),
        ],
      ),
    );
  }
}


/*
 * 凹陷的导航栏 
 */
class RaisedNavigationBarTwo extends StatelessWidget {
  const RaisedNavigationBarTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        backgroundColor: Colors.yellow,
        onPressed: (){print('点击了添加按钮');},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 5.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 56,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: FractionalOffset(0.5, 0),
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.account_balance),
                    iconSize: 26,
                    color: Color(0xFF333333),
                  ),
                  Positioned(
                    bottom: -2,
                    child: Text(
                      '首页',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12
                      ),
                    ),
                  )
                ],
              ),
            ),
            
            Container(
              height: 56,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: FractionalOffset(0.5, 0),
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.format_indent_decrease),
                    iconSize: 26,
                    color: Color(0xFF333333),
                  ),
                  Positioned(
                    bottom: -2,
                    child: Text(
                      '分类',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 56,
              width: 60,
            ),
            Container(
              height: 56,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: FractionalOffset(0.5, 0),
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.message),
                    iconSize: 26,
                    color: Color(0xFF333333),
                  ),
                  Positioned(
                    bottom: -2,
                    child: Text(
                      '消息',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 56,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: FractionalOffset(0.5, 0),
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.perm_contact_calendar),
                    iconSize: 26,
                    color: Color(0xFF333333),
                  ),
                  Positioned(
                    bottom: -2,
                    child: Text(
                      '我的',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}