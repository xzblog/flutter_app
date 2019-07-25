import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('订单列表'),
          centerTitle: true,
          elevation: 0.5,
          brightness: Brightness.dark,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.face),
              onPressed: () {
                print('在线客户为你服务');
              },
            ),
            IconButton(
              icon: Icon(Icons.more),
              onPressed: () {
                print('在线客户为你服务');
              },
            )
          ],
          backgroundColor: Color(0xFFF4F4F4),
          iconTheme: IconThemeData(
            color: Color(0xFF333333)
          ),
          textTheme: TextTheme(
            title: TextStyle(
              color: Color(0xFF333333),
              fontSize: 18.0  
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(36),
            child: TabBar(
            // isScrollable: true,
            labelColor: Color(0xFF09afff),
            unselectedLabelColor: Color(0xFF333333),
            indicatorColor: Color(0xFF09afff),
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
            indicatorPadding: EdgeInsets.all(2.0),
            tabs: <Widget>[
              Text('全部分类'),
              Text('待付款'),
              Text('待配送'),
              Text('待收获'),
              Text('待评价'),
            ],
          ),
          ),
          // bottomOpacity: 0.5,
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Text('全部分类')
              ],
            ),
            ListView(
              children: <Widget>[
                Text('待付款')
              ],
            ),
            ListView(
              children: <Widget>[
                Text('待配送')
              ],
            ),
            ListView(
              children: <Widget>[
                Text('待收货')
              ],
            ),
            ListView(
              children: <Widget>[
                Text('待评价')
              ],
            ),
          ],
        ),
      ),
    );
  }
}