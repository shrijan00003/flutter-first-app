import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products) {
    print('[Product widget] Constructor');
  }
  @override
  Widget build(BuildContext context) {
    print('[Product widget] build()');
    return Column(
      children: products
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
    );
  }
}
