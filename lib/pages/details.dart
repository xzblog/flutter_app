import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({Key key, this.arguments}) : super(key: key);
  final Map arguments;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('我是详情页'),
      ),
      body: Text('我是详情${arguments["id"]}'),
    );
  }
}