import 'package:flutter/material.dart';

void main() {
  //special function
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _products.add(('Avanced Food Tester'));
                    });
                  },
                  child: Text('Add Products'),
                ),
              ),
              Column(
                children: _products
                    .map(
                      (element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/food.jpeg'),
                                Text(element),
                              ],
                            ),
                          ),
                    )
                    .toList(),
              )
            ],
          )),
    );
  }
}
