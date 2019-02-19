#day 4
we are going to pass the argument to the stateful Widget such as we did previously in stateless widget.

we need to put final keyword for making immutable as `final String startingProduct;`

so we can use initState() method to initialize the state of the statefulWidget

example how can we pass value to the constructor of the statefulwidget is given below:

`body: ProductManager('Food Tester'),` passing value to the ProductManager widget and in ProductManager Widget we will recieve the value as:

```
import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

#### what we have done so far ?

- craeted a string variable with name startingProduct
- added to the constructor method with this keyword
- created the initState() method inside the state class and used widget to assign the value to \_products.
- we dont have to use setState as we initState method will be executed before build method runs.

### lifecycle of the stateless widget

1. Constructor Function
2. build()

### lifecycle of statefull widget

1. constructor
2. initState()
3. build()
4. setState()
5. didUpdateWidget()
6. build()

as we can see that the lifecycle of the statefull widget is much complex as in statefull component in react

### customizing theme

we can add theme to the MaterialApp widget with different properties like brightness,primarySwatch, accentColor and so on like

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light, //which is default
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}

```

we can also implement that in other places as well, so let us also change the color of the button used before in ProductManager widget with the help of `Theme` class.

```
 child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add(('Avanced Food Tester'));
              });
            },
```

### static properties in Dart

statuc properties are those properties that can be accessed with the class without instantiate the class or say without calling the constructor function. If we have seen the Colors class the deepOrange is the static property. `primarySwatch: Colors.deepOrange,`

### named arguments

we can pass the named argument and recieve like in javascript destructuring with { } braces.

we also have positioned argument which can be use full for very few paramets.

### optional arguments

optional parameter must be const (This is the special feature of the dart)

optional parameter must be also enclosed by the [] square bracket as we know that named arguments are enclosed by { } curly braces.

we can use optional arguments in the stateless arguments and if we have forgot to pass the arguments to the stateless widget that app will not get crashed.

### for learning more about the dart language we can follow the link

https://www.dartlang.org/
