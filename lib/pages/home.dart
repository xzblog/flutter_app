import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {
              print('更多');
            },
          ),
        ],
        actionsIconTheme: IconThemeData(color: Colors.black, opacity: 0.1, size: 12.0),
        iconTheme: IconThemeData(color: Colors.black),
        titleSpacing: 100.0,
        backgroundColor: Color(0xFF0abdff),
        brightness: Brightness.dark,
        toolbarOpacity: 0.5,
        elevation: 1.0,
        flexibleSpace: Container(child: Text('大苏打实打实的'),),
        centerTitle: true,
        title: Text('一点生鲜'),
      ),
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Text('我是首页')
          ],),
          Wrap(
            spacing: 10.0,
            children: <Widget>[
              RaisedButton(
                child: Text('点我进详情'),
                onPressed: () {
                  Navigator.pushNamed(context, '/details', arguments: {
                    'id': 1,
                  });
                },
              ),
              RaisedButton(
                child: Text('订单列表'),
                onPressed: () {
                  Navigator.pushNamed(context, '/orderList');
                },
              ),
              RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              RaisedButton(
                child: Text('简历'),
                onPressed: () {
                  Navigator.pushNamed(context, '/resume');
                },
              ),
              RaisedButton(
                child: Text('凸起的底部导航'),
                onPressed: () {
                  Navigator.pushNamed(context, '/raisedNavigationBar');
                },
              ),
            ],
          ),

          Text(
            'Hello, Miracle! nice to meat you? hei hei hei',
            textAlign: TextAlign.left,
            overflow:TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize:25.0,
              color:Color.fromARGB(255, 255, 150, 150),
              decoration:TextDecoration.underline,
              decorationStyle:TextDecorationStyle.solid,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage('http://qiniu.yogoo.co/miracle/avatar_lady.jpg'),
            foregroundColor: Colors.black,
            radius: 40.0,
            child: Text('Miracle'),
          ),
          Row(children: <Widget>[
            Expanded(
              child: Container(
                child: Text('我也不知道写啥啊'),
              )
            )
          ],),
          Container(
            width: 120,
            height: 60,
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('http://qiniu.yogoo.co/miracle/avatar_lady.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  child: Text('Miracle'),
                ),
              ],
            ),
          )
          // GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //     mainAxisSpacing: 2.0,
          //     crossAxisSpacing: 2.0,
          //     childAspectRatio: 0.7
          //   ),
          //   // padding: EdgeInsets.all(10.0),
          //   children: <Widget>[
          //     Text('dasds '),
          //     Text('dasds '),
          //     Text('dasds '),
          //   ],
          // )
        ],
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
