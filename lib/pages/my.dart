import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 120.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF58C7FA), Color(0xFF52BBF9), Color(0xFF4CAFF8)]),
            image: DecorationImage( image: NetworkImage('http://puqovkxfe.bkt.clouddn.com/image/mine/mine_user_background.png')),
          ),
        ),
        Center(
          child: Container(
            width: 720.0,
            height: 120.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFFFFF00), width: 0.5)
            ),
          ),
        ),
        Row(children: <Widget>[],)
      ],
    );
  }
}