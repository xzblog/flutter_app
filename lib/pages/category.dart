import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('一点生鲜'),
      ),
      body: Text('分类'),
    );
  }
}