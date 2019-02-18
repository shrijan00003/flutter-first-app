#day1 installation

pubspec.yaml will have all of our packages and installation.

main.dart file is imp file and it doesnot have to renamed !!!!

we will add more content on this branch

main.dart file can be shown as :

```
import 'package:flutter/material.dart';

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
      ),
    );
  }
}

```

we can replace the main function with the fat=>arrow function as in comment

The annotation @override will tell the flutter that we are overriding the build method that is already in the StatelessWidget class. It can work without annotation as well.
##Notes

1. Whatever widget we will add on the app we will ended with flutter built-in widget at the last as they can be converted to the native code.

### lets add more to app

we have added body argument for the Scaffold widget just like appBar widget
example is:

```
 body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpeg'),
              Text('Food paradise'),
            ],
          ),
        ),
```

in body argument we are having another widget called Card and this will also have widgets listed inside. Column widget will have children argument that will have multiple widgets listed in array.

we can see another type of constructor used with Image widget with . operator. we can always can check tool tips to have more suggestions.

### tool tips

`clrt + space` will give us the suggestions.

### adding assets to the flutter

create a new folder called `assets` on our root folder

download some images for test

Edit the pubspec.yaml file

```
 # To add assets to your application, add an assets section, like this:
  assets:
    - assets/food.jpeg
```

### widgets catalog

widgets catalog will have all ui related widgets and that is where we can find all widgets to be added to our app

### editing body

```
 body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Product'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpeg'),
                    Text('Food paradise'),
                  ],
                ),
              ),
            ],
          )),
```

we have added Column widget and container in children of column and we have raisedButton as its child with onPressed and child arguemnts.

#### adding functionality to the button

create a new card on button pressed

#### quick review to the body argument before spliting it in another file

```
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
```

Description about this code :

we can not directly add \_products as it is the iterable with map with the children property of column so that we have to make another nested column inside it and never forget to convert it to List after the end of map parenthesis.
