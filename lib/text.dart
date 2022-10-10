import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String _text;
  TextStyle _textStyle;

  MyText(this._text, this._textStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
    );
  }
}
