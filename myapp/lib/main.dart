import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          title: new Text('Hello world!')
        ),
//        body: new Center(
//          child: testTwo(),
//        ),
      ),
    );

  }

  testTwo() {

    List items = loadData();

    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int position) {

          return new Card(
              child: new ListTile(
                  title: new Text(items[position])
              )
          );
        });
  }

  loadData() {
    return new List<String>.generate(100, (i) => "$i");
  }
}
