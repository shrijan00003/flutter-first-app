import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "sweets Tester"}) {
    // sweets tester is the default value
    print('[ProductManager widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[ProductManager widget] createState()');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager widget] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  // the function defined here will be passed to the product control widget as argument

  void _addProduct(String productName) {
    print('product name is ' + productName);
    setState(() {
      _products.add(productName);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager widget] Build()');

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products),
      ],
    );
  }
}
