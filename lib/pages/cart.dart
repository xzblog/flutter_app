import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('一点生鲜'),
      ),
      body: Text('购物车'),
    );
  }
}