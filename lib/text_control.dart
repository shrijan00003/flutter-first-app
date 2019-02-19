import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the text to be changed';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Change Text'),
          onPressed: () {
            setState(() {
              _mainText = "This is changed";
            });
          },
        ),
        TextOutput(_mainText)
      ],
    );
  }
}
