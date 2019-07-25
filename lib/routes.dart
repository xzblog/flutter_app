import 'package:flutter/material.dart';

// 引入所有需要设置路由的文件
import './navigationBar.dart';
import './pages/details.dart';
import './pages/orderList.dart';
import './pages/user/login.dart';
import './pages/user/resume.dart';
import './pages/bottomNavigationBar/raisedBottomNavigationBar.dart';


// 路由重命名
final routes = {
  '/': (context, { arguments }) => NavigationBar(),
  '/orderList': (context, { arguments }) => OrderList(),
  '/details': (context, { arguments }) => Details(arguments: arguments),
  '/login': (context) => Login(),
  '/resume': (context) => Resume(),
  
  '/raisedNavigationBar': (context) => RaisedBottomNavigationBar(),

};

// 用MaterialPageRoute生成路由
final RouteFactory onGenerateRoute = (RouteSettings settings) {
  final Function pageContentBuilder = routes[settings.name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (BuildContext context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (BuildContext context) {
          return pageContentBuilder(context);
        }
      );
      return route;
    }
  }
};