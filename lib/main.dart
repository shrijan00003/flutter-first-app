import 'package:flutter/material.dart';
import 'product_manager.dart';

import './text_control.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Product Manager'),
            ),
            body: ProductManager()));
  }
}
