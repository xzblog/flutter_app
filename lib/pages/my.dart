import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('一点生鲜'),
      ),
      body: Text('我的'),
    );
  }
}