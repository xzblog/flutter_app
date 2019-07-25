import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(96),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print('设置');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.face),
              onPressed: (){
                print('客服');
              },
            )
          ],
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            height: 120.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFF58C7FA), Color(0xFF52BBF9), Color(0xFF4CAFF8)]),
              image: DecorationImage( 
                image: NetworkImage('http://puqovkxfe.bkt.clouddn.com/image/mine/mine_user_background.png'), 
                fit: BoxFit.cover
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          
          Container(
            height: 120.0,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1),
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0XFFFFFFFF),
            ),
          ),
          Container(
            height: 120.0,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1),
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0XFFFFFFFF),
            ),
          ),
          Container(
            height: 120.0,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1),
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0XFFFFFFFF),
            ),
          ),
          Container(
            height: 120.0,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF000000), width: 1),
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0XFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}