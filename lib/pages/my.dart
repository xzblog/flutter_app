import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 120.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF58C7FA), Color(0xFF52BBF9), Color(0xFF4CAFF8)]),
            image: DecorationImage( image: NetworkImage('http://puqovkxfe.bkt.clouddn.com/image/mine/mine_user_background.png'), fit: BoxFit.cover),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 340.0,
                height: 120.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000), width: 1)
                ),
              )
            ),
          ],
        ),
        Row(children: <Widget>[],)
      ],
    );
  }
}