#day3 split and manage files

we have splited our code to different stateless and stateful widgets files so that our code will look much nicer and executable.

we have created two more files `producsts.dart`, and `product_manager.dart` as the name suggest products.dart is the stateless widget that is responsible for getting products from parent and display in the screen. And product_manager.dart is the statefullwidget as that will have state and it will update the state as button is clicked .

Finally we have added both of them with import function so this is how our 3 files look like now.

_main.dart_

```
import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
 //special function
 runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('EasyList'),
       ),
       body: ProductManager(),
     ),
   );
 }
}

```

_products.dart_

```
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
 final List<String> products;
 Products(this.products);
 @override
 Widget build(BuildContext context) {
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

```

and fillay _product_manager.dart_ file

```
import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
   // TODO: implement createState
   return _ProductManagerState();
 }
}

class _ProductManagerState extends State<ProductManager> {
 List<String> _products = ['Food Tester'];
 @override
 Widget build(BuildContext context) {
   // TODO: implement build
   return Column(
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
       Products(_products),
     ],
   );
 }
}

```

Note: the tutorial is covered upto 2:19 we will continue this whenever we will have time further
