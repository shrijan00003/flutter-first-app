import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        print('btn is pressed in product_control');
        addProduct('Sweet');
      },
      child: Text('Add Products'),
    );
  }
}
